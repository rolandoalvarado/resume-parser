require 'spec_helper'

describe 'Processor' do
  let(:processor) { Processor.new }

  describe '#execute' do

    describe 'empty string' do

      it 'ignores the command without warning' do
        expect(processor.execute('')).to be_nil
      end
    end

    describe 'whitespace' do

      it 'ignores the command without warning' do
        expect(processor.execute('              ')).to be_nil
      end
    end

    describe 'parsing json object' do

      describe 'PARSE' do

        describe 'at valid arguments' do

          before do
            expect(processor).to receive(:arguments).with(:file_path).and_return(:file_path)
          end

          it 'parse the json object' do
            processor.execute('PARSE')
          end
        end

        describe 'with an invalid arguments' do

          before do
            expect(processor).to receive(:arguments).with(:file_path).and_return(nil)
          end

          it 'does not parse json object' do
            expect(processor.execute('PARSE')).to eq('Ignoring PARSE with invalid arguments.')
          end
        end
      end

    end

  end
end
