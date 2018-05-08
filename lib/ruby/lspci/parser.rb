module Ruby::Lspci
  class Parser
    attr_reader :command_result

    def self.parse(command_result)
      new(command_result).parse
    end

    def initialize(command_result)
      @command_result = command_result
    end

    def lspci_version
      @version ||= `lspci --version`
    end

    def parse

    end
  end
end
