require 'active_support/core_ext/hash/indifferent_access'

module Ruby::Lspci
  class Parser
    attr_reader :command_result

    def self.parse(command_result=nil)
      new(command_result).parse
    end

    def initialize(command_result=nil)
      @command_result = command_result
    end

    def lspci_output
      @lspci_output ||= `lspci -vmm`
    end

    def parse
      devices = []
      command_result = (command_result || lspci_output)

      split_devices  = split_devices(command_result)
      split_devices.each do |device|
        devices << parse_device(device)
      end

      devices
    end

    private

    def split_devices(command_result)
      delimiter = "\n\n"
      command_result.split(delimiter)
    end

    def parse_device(device_string)
      device = HashWithIndifferentAccess.new
      delimiter = ":\t"
      details = device_string.split("\n")

      details.each do |line|
        split_details = line.split(delimiter)
        device[split_details.shift.downcase] = split_details.map(&:strip).join(' ').strip
      end

      device
    end
  end
end
