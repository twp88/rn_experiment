class NumeralConvertor
  UNITS = ['', 'I', 'II', 'III', 'IV', 'V',
           'VI', 'VII', 'VII', 'IX'].freeze

  TENS = ['', 'X', 'XX', 'XXX', 'XL', 'L',
          'LX', 'LXX', 'LXXX', 'XC'].freeze

  HUNDREDS = ['', 'C', 'CC', 'CCC', 'CD',
              'D', 'DC', 'DCC', 'DCCC', 'CM'].freeze

  THOUSANDS = ['', 'M', 'MM', 'MMM', 'MMMM'].freeze

  LATIN_NUMERALS = [UNITS,
                    TENS,
                    HUNDREDS,
                    THOUSANDS].freeze

  def initialize(standard_numeral)
    @standard_numeral = standard_numeral
  end

  def call
    reversed_roman_numerals_array = generate_roman_numeral_array
    reversed_roman_numerals_array.reverse.join
  end

  private

  def reversed_standard_numeral
    standard_numeral.split('').reverse
  end

  def generate_roman_numeral_array
    output = []

    reversed_standard_numeral.each.with_index do |v, i|
      output << LATIN_NUMERALS[i][v.to_i]
    end

    output
  end

  attr_reader :standard_numeral
end

# loook at poss of using %
