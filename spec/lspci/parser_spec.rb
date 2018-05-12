require 'lspci/parser'

RSpec.describe Lspci::Parser do
  describe '.parse' do
    it 'creates an instance' do
        expect(described_class).to receive(:new).and_call_original
        described_class.parse("some lspci output")
    end
  end

  describe '#parse' do
    subject { described_class.parse(command_result) }
    let(:command_result) { }
    context 'when lspci is not a recognized command' do
      it 'should raise an error' do

      end
    end

    context 'happy path' do
      subject { described_class.parse(good_input) }
      let(:good_input) do
        "Slot:\t00:00.0\nClass:\tHost bridge\nVendor:\tIntel Corporation\nDevice:\tIntel Kaby Lake Host Bridge\nSVendor:\tASUSTeK Computer Inc.\n"\
        "SDevice:\tDevice 872f\nRev:\t05\n\nSlot:\t00:01.0\nClass:\tPCI bridge\nVendor:\tIntel Corporation\nDevice:\tSky Lake PCIe Controller (x16)\n"\
        "Rev:\t05\n\nSlot:\t00:01.1\nClass:\tPCI bridge\nVendor:\tIntel Corporation\nDevice:\tSky Lake PCIe Controller (x8)\nRev:\t05\n\nSlot:\t00:14.0\n"\
        "Class:\tUSB controller\nVendor:\tIntel Corporation\nDevice:\t200 Series PCH USB 3.0 xHCI Controller\nSVendor:\tASUSTeK Computer Inc.\n"\
        "SDevice:\tDevice 872f\nProgIf:\t30\n\nSlot:\t00:16.0\nClass:\tCommunication controller\nVendor:\tIntel Corporation\n"\
        "Device:\t200 Series PCH CSME HECI #1\nSVendor:\tASUSTeK Computer Inc.\nSDevice:\tDevice 872f\n\nSlot:\t00:17.0\n"\
        "Class:\tSATA controller\nVendor:\tIntel Corporation\nDevice:\t200 Series PCH SATA controller [AHCI mode]\nSVendor:\tASUSTeK Computer Inc.\n"\
        "SDevice:\tDevice 872f\nProgIf:\t01\n\nSlot:\t00:1b.0\nClass:\tPCI bridge\nVendor:\tIntel Corporation\nDevice:\t200 Series PCH PCI Express Root Port #17\n"\
        "Rev:\tf0\n\nSlot:\t00:1c.0\nClass:\tPCI bridge\nVendor:\tIntel Corporation\nDevice:\t200 Series PCH PCI Express Root Port #1\n"\
        "Rev:\tf0\n\nSlot:\t00:1c.4\nClass:\tPCI bridge\nVendor:\tIntel Corporation\nDevice:\t200 Series PCH PCI Express Root Port #5\nRev:\tf0\n"
      end

      it 'will have the correct keys' do
        expected_keys = %w{slot class vendor device svendor sdevice rev progif}
        expect(subject.map(&:keys).flatten.uniq).to match_array(expected_keys)
      end
    end
  end
end
