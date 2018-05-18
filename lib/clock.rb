# This is the clock class
class Clock
  attr_reader :standard_numeral

  def initialize(standard_numeral)
    @standard_numeral = standard_numeral
    @latin_numerals_ones = [
      'I',
      'II',
      'III',
      'IV',
      'V',
      'VI',
      'VII',
      'VII',
      'IX',
      ''
    ]
    @latin_numerals_tens = %w[X XX XXX XXXX]
    @array = [@latin_numerals_tens, @latin_numerals_ones]
    # All this for constants
  end

  def call
    if double_digit?(@standard_numeral)
      parse(@standard_numeral)
    else
      convert_ones(@standard_numeral)
    end
  end

  protected

  def double_digit?(standard_numeral)
    standard_numeral.length >= 2 ? true : false
  end

  def convert_ones(standard_numeral)
    @latin_numerals_ones[standard_numeral.to_i - 1]
  end

  def parse(standard_numeral)
    # Different method name required
    standard_numeral.split('')
                    .map { |n| @array[standard_numeral.index(n)][n.to_i - 1] }
                    .join('')
  end
end
