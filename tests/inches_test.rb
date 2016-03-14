gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'config.rb'

#TODO: Fix tests

class InchesTest < Minitest::Test
  include ConvertableErrors
  include Inches

  ###### Test Valid Input #########
  def test_error_on_invalid_input
    assert_raises(ConvertableErrors::InvalidInput) {Inches.to_centimeters("t")}
  end

  ###### Test to_metric methods #########
  def test_to_millimeters_int
    assert_equal 50.8, Inches.to_millimeters(2)
  end

  def test_to_millimeters_float
    assert_equal 82.296, Inches.to_millimeters(3.24)
  end

  def test_to_centimeters_int
    assert_equal 5.08, Inches.to_centimeters(2)
  end

  def test_to_centimeters_float
    assert_equal 8.229600000000001, Inches.to_centimeters(3.24)
  end

  def test_to_meters_int
    assert_equal 0.0508, Inches.to_meters(2)
  end

  def test_to_meters_float
    assert_equal 0.08229600000000001, Inches.to_meters(3.24)
  end

  def test_to_kilometers_int
    assert_equal 5.08e-05, Inches.to_kilometers(2)
  end

  def test_to_kilometers_float
    assert_equal 8.229600000000001e-05, Inches.to_kilometers(3.24)
  end

end
