# frozen_string_literal: true

# Class to format numbers in common ways.
class Numbers
  class << self
    # Returns the passed number formatted as GBP currency e.g. £1,234.56.
    #
    # Params:
    # - number: The number to format.
    def currency(number)
      return '£0' if number.nil?

      "£#{grouped(format('%.2f', number))}"
    end

    # Returns the passed number formatted in groups of 1000 e.g 1,000,000. Note that any numbers
    # after the decimal point are preserved unformatted.
    #
    # Params:
    # - number: The number to format.
    #
    # An Argument error is raised if number is nil.
    def grouped(number)
      raise ArgumentError.new('number cannot be nil') if number.nil?

      whole, decimal = number.to_s.split('.')
      count_groups = whole.to_s.chars.to_a.reverse.each_slice(3)
      whole_with_commas = count_groups.map(&:join).join(',').reverse
      [whole_with_commas, decimal].compact.join('.')
    end

    # Returns the passed number formatted as a percentage of the passed total.
    #
    # Params:
    # - number: The number which is a percentage of the total.
    # - total: The total.
    #
    # An Argument error is raised if number or total are nil.
    def percentage(number, total)
      raise ArgumentError.new('number cannot be nil') if number.nil?
      raise ArgumentError.new('total cannot be nil') if total.nil?

      "#{((number.to_f / total.to_f) * 100).round(2)}%"
    end
  end
end
