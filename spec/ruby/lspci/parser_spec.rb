require 'ruby/lspci/parser'

RSpec.describe Ruby::Lspci::Parser do
  describe '.parse' do
    it 'creates an instance' do
        expect(described_class).to receive(:new).and_call_original
        described_class.parse("some lspci output")
    end
  end

  describe '#parse' do
    context 'when lspci is not a recognized command' do
      it 'should raise an error' do

      end
    end

  end
end
