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

    context 'when command_result is unrecognized' do
      let(:command_result) { 'asdf' }
    end
  end
end
