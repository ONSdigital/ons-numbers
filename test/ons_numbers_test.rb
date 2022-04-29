# frozen_string_literal: true

require 'test/unit'

require_relative '../lib/ons-numbers/numbers'

class ONSNumbersTest < Test::Unit::TestCase
  def test_currency_returns_zero_for_nil
    assert_equal '£0', Numbers.currency(nil)
  end

  def test_currency_with_float
    assert_equal '£1,234.56', Numbers.currency(1234.56)
  end

  def test_currency_with_string
    assert_equal '£1,234.56', Numbers.currency('1234.56')
  end

  def test_grouped_number_with_integer
    assert_equal '1,234,567', Numbers.grouped(1_234_567)
  end

  def test_grouped_number_with_float
    assert_equal '1,234,567.89', Numbers.grouped(1_234_567.89)
  end

  def test_grouped_number_with_string
    assert_equal '1,234,567', Numbers.grouped('1234567')
    assert_equal '1,234,567.89', Numbers.grouped('1234567.89')
  end

  def test_percentage
    assert_equal '75.0%', Numbers.percentage(75, 100)
  end

  def test_percentage_with_float
    assert_equal '75.88%', Numbers.percentage(75.5, 99.5)
  end

  def test_percentage_with_string
    assert_equal '75.0%', Numbers.percentage('75', '100')
  end

  def test_percentage_with_float_and_string
    assert_equal '75.88%', Numbers.percentage(75.5, '99.5')
  end
end
