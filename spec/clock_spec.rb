require 'spec_helper'

describe Clock do
  let(:subject_three) { Clock.new(standard_numeral_3) }
  let(:subject_five) { Clock.new(standard_numeral_5) }
  let(:subject_nine) { Clock.new(standard_numeral_9) }
  let(:subject_ten) { Clock.new(standard_numeral_10) }
  let(:subject_twenty) { Clock.new(standard_numeral_20) }
  let(:subject_twenty_one) { Clock.new(standard_numeral_21) }
  let(:subject_thirty_five) { Clock.new(standard_numeral_35) }
  let(:subject_one_hundred) { Clock.new(standard_numeral_100) }
  let(:subject_one_hundred_one) { Clock.new(standard_numeral_101) }
  let(:subject_seven_hundred) { Clock.new(standard_numeral_700) }
  let(:subject_seven_hundred_fifty_one) { Clock.new(standard_numeral_751) }
  let(:subject_one_thousand) { Clock.new(standard_numeral_1000) }
  let(:subject_three_thousand_five_hundred_fifty_one) { Clock.new(standard_numeral_3551) }
  let(:subject_four_thousand_nine_hundred_ninety_nine) { Clock.new(standard_numeral_4999) }

  let(:standard_numeral_3) { '3' }
  let(:standard_numeral_5) { '5' }
  let(:standard_numeral_9) { '9' }
  let(:standard_numeral_10) { '10' }
  let(:standard_numeral_20) { '20' }
  let(:standard_numeral_21) { '21' }
  let(:standard_numeral_35) { '35' }
  let(:standard_numeral_100) { '100' }
  let(:standard_numeral_101) { '101' }
  let(:standard_numeral_700) { '700' }
  let(:standard_numeral_751) { '751' }
  let(:standard_numeral_1000) { '1000' }
  let(:standard_numeral_3551) { '3551' }
  let(:standard_numeral_4999) { '4999' }

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

    it 'returns the numeral correctly converted to C' do
      expect(subject_one_hundred.call).to eq 'C'
    end

    it 'returns the numeral correctly converted to CI' do
      expect(subject_one_hundred_one.call).to eq 'CI'
    end

    it 'returns the numeral correctly converted to DCC' do
      expect(subject_seven_hundred.call).to eq 'DCC'
    end

    it 'returns the numeral correctly converted to DCCLI' do
      expect(subject_seven_hundred_fifty_one.call).to eq 'DCCLI'
    end

    it 'returns the numeral correctly converted to M' do
      expect(subject_one_thousand.call).to eq 'M'
    end

    it 'returns the numeral correctly converted to MMMDLI' do
      expect(subject_three_thousand_five_hundred_fifty_one.call).to eq 'MMMDLI'
    end

    it 'returns the numeral correctly converted to MMMMCMXCIX' do
      expect(subject_four_thousand_nine_hundred_ninety_nine.call)
        .to eq 'MMMMCMXCIX'
    end
  end
end
