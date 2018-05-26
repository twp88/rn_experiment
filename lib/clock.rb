# This is the clock class
class Clock
  attr_reader :standard_numeral

  LATIN_NUMERALS_ONES = ['I', 'II', 'III', 'IV', 'V',
                         'VI', 'VII', 'VII', 'IX', ''].freeze

  LATIN_NUMERALS_TENS = ['X', 'XX', 'XXX', 'XL', 'L',
                         'LX', 'LXX', 'LXXX', 'XC', ''].freeze

  LATIN_NUMERALS_HUNDREDS = ['C', 'CC', 'CCC', 'CD',
                             'D', 'DC', 'DCC', 'DCCC', 'CM', ''].freeze

  LATIN_NUMERALS_THOUSANDS = ['M', 'MM', 'MMM', 'MMMM', ''].freeze

  def initialize(standard_numeral)
    @standard_numeral = standard_numeral

    @array = [LATIN_NUMERALS_ONES,
              LATIN_NUMERALS_TENS,
              LATIN_NUMERALS_HUNDREDS,
              LATIN_NUMERALS_THOUSANDS]
  end

  def call
    parse(@standard_numeral)
  end

  protected

  def parse(standard_numeral)
    out = []
    standard_numeral.split('').reverse.each_with_index do |v, i|
      out << @array[i][v.to_i - 1]
    end
    out.reverse.join('')
  end
end
