require 'lspci/version'
require 'lspci/parser'

module Lspci
  class << self
    # Get an array of PCI Devices with details in a Hash
    #
    # Example:
    #   >> Lspci.pci_devices
    #   =>
    #     [{"slot"=>"00:00.0",
    #     "class"=>"Host bridge",
    #     "vendor"=>"Intel Corporation",
    #     "device"=>"Intel Kaby Lake Host Bridge",
    #     "svendor"=>"ASUSTeK Computer Inc.",
    #     "sdevice"=>"Device 872f",
    #     "rev"=>"05"}]
    #
    # Arguments:
    #   lspci_output: (String) -- Optional
    #     You can pass in the output from `lspci -vmm` to be parsed
    def pci_devices(lspci_output=nil)
      Lspci::Parser.parse(lspci_output)
    end
  end
end
