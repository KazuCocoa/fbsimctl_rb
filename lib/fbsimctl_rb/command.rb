module FbsimctlRb
  class Cmd
    attr_reader :fbsim

    def initialize
      @fbsim = 'fbsimctl'
    end

    private

    def run(*command)
      sto, _ste, status = Open3.capture3(command.join(' '))
      status.success? ? sto : raise(stdo)
    end

    protected

    def method_missing(method, *args, &_block)
      if respond_to_missing?
        run(%W(#{@fbsim_cmd} #{method}}) + args)
      else
        super
      end
    end

    def respond_to_missing?
      true
    end
  end
end
