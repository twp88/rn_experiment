require 'spec_helper'

describe Clock do
  let(:subject_three) { Clock.new(standard_numeral_3) }
  let(:subject_five) { Clock.new(standard_numeral_5) }
  let(:subject_nine) { Clock.new(standard_numeral_9) }
  let(:subject_ten) { Clock.new(standard_numeral_10) }
  let(:subject_twenty) { Clock.new(standard_numeral_20) }
  let(:subject_twenty_one) { Clock.new(standard_numeral_21) }
  let(:subject_thirty_five) { Clock.new(standard_numeral_35) }

  let(:standard_numeral_3) { '3' }
  let(:standard_numeral_5) { '5' }
  let(:standard_numeral_9) { '9' }
  let(:standard_numeral_10) { '10' }
  let(:standard_numeral_20) { '20' }
  let(:standard_numeral_21) { '21' }
  let(:standard_numeral_35) { '35' }

  describe 'when initialized' do
    it 'initializes correctly' do
      expect(subject_three.standard_numeral).to eq standard_numeral_3
    end
  end

  describe 'call' do
    it 'returns the numeral correctly converted to III' do
      expect(subject_three.call).to eq 'III'
    end

    it 'returns the numeral correctly converted to V' do
      expect(subject_five.call).to eq 'V'
    end

    it 'returns the numeral correctly converted to IX' do
      expect(subject_nine.call).to eq 'IX'
    end

    it 'returns the numeral correctly converted to X' do
      expect(subject_ten.call).to eq 'X'
    end

    it 'returns the numeral correctly converted to XX' do
      expect(subject_twenty.call).to eq 'XX'
    end

    it 'returns the numeral correctly converted to XXI' do
      expect(subject_twenty_one.call).to eq 'XXI'
    end

    it 'returns the numeral correctly converted to XXI' do
      expect(subject_thirty_five.call).to eq 'XXXV'
    end
  end
end
