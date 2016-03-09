gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'

load 'config.rb'

class CentimetersTest < Minitest::Test
  include ConvertableErrors
  include Centimeters

  def test_error_on_invalid_input
    assert_raises(ConvertableErrors::InvalidInput) {Centimeters.to_inches("t")}
  end

  def test_to_inches_int
    assert_equal 0.3937007874, Centimeters.to_inches(1)
  end

  def test_to_inches_float
    assert_equal 1.2755905512, Centimeters.to_inches(3.24)
  end

  def test_to_millimeters_int
    assert_equal 10.0, Centimeters.to_millimeters(1)
  end

  def test_to_millimeters_float
    assert_equal 32.4, Centimeters.to_millimeters(3.24)
  end

  def test_to_meters_int
    assert_equal 0.01, Centimeters.to_meters(1)
  end

  def test_to_meters_float
    assert_equal 0.0324, Centimeters.to_meters(3.24)
  end

  def test_to_kilometers_int
    assert_equal 0.00001, Centimeters.to_kilometers(1)
  end

  def test_to_kilometers_float
    assert_equal 0.0000324, Centimeters.to_kilometers(3.24)
  end


end
