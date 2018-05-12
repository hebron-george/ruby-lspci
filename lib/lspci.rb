require 'lspci/version'
require 'lspci/parser'

module Lspci
  class << self
    def pci_devices(lspci_output=nil)
      Lspci::Parser.parse(lspci_output)
    end
  end
end
