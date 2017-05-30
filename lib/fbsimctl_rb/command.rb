module fbsimctl_rb
  class Cmd
    attr_reader :fbsim

    def initialize
      @fbsim = 'fbsimctl'
    end

    private

    def run(*command)
      sto, _ste, status = Open3.capture3(command.join(' '))
      status.success? sto : raise(stdo)
    end

    protected

    def method_missing(method, *args, &block)
      run(%W(#{@fbsim_cmd} #{method}}) + *args)
    end
  end
end
