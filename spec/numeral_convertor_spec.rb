require 'spec_helper'

describe NumeralConvertor do
  subject { NumeralConvertor.new(number) }
  # introduce ranges into the contexts, thinking about the minilmal case that would cover oall of the ranges

  describe '#call' do
    shared_examples 'converting to standard numerals' do
      it 'returns the numeral correctly converted to III' do
        expect(subject.call).to eq expected_numeral
      end
    end

    context 'when the number is 3' do
      let(:number) { '3' }
      let(:expected_numeral) { 'III' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 5' do
      let(:number) { '5' }
      let(:expected_numeral) { 'V' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 9' do
      let(:number) { '9' }
      let(:expected_numeral) { 'IX' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 10' do
      let(:number) { '10' }
      let(:expected_numeral) { 'X' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 20' do
      let(:number) { '20' }
      let(:expected_numeral) { 'XX' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 21' do
      let(:number) { '21' }
      let(:expected_numeral) { 'XXI' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 35' do
      let(:number) { '35' }
      let(:expected_numeral) { 'XXXV' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 100' do
      let(:number) { '100' }
      let(:expected_numeral) { 'C' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 101' do
      let(:number) { '101' }
      let(:expected_numeral) { 'CI' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 700' do
      let(:number) { '700' }
      let(:expected_numeral) { 'DCC' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 751' do
      let(:number) { '751' }
      let(:expected_numeral) { 'DCCLI' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 1000' do
      let(:number) { '1000' }
      let(:expected_numeral) { 'M' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 3551' do
      let(:number) { '3551' }
      let(:expected_numeral) { 'MMMDLI' }

      it_behaves_like 'converting to standard numerals'
    end

    context 'when the number is 4999' do
      let(:number) { '4999' }
      let(:expected_numeral) { 'MMMMCMXCIX' }

      it_behaves_like 'converting to standard numerals'
    end
  end
end
