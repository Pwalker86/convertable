gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'

load 'config.rb'

class InchesTest < Minitest::Test
  include ConvertableErrors
  include Inches

  def test_error_on_invalid_input
    assert_raises(ConvertableErrors::InvalidInput) {Inches.to_centimeters("t")}
  end

  def test_to_inches_int
    assert_equal 2.54, Inches.to_centimeters(1)
  end

  def test_to_inches_float
    assert_equal 8.2296, Inches.to_centimeters(3.24)
  end

end
