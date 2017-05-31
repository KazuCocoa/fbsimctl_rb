module FbsimctlRb
  class Cmd
    attr_reader :fbsim

    def initialize
      validate_env

      @fbsim = 'fbsimctl'
    end

    private

    def run(*command)
      cmd = command.join(' ')
      sto, ste, status = Open3.capture3(cmd)
      if status.success?
        sto
      else
        puts ste
        raise(sto)
      end
    end

    def validate_env
      return unless `which fbsimctl`.empty?
      raise "You should install fbsimctl. Read https://github.com/facebook/FBSimulatorControl/tree/master/fbsimctl"
    end

    protected

    def method_missing(method, *args, &_block)
      if respond_to_missing?
        run(%W(#{@fbsim} #{method}) + args)
      else
        super
      end
    end

    def respond_to_missing?
      true
    end
  end
end
