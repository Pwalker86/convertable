require './test/test_helper'

class InchesTest < Minitest::Test

  ###### Test Valid Input #########
  def test_error_on_invalid_input
    skip
    assert_raises(ConvertableErrors::InvalidInput) {Inches.to_centimeters("t")}
  end

  ###### Test to_metric methods #########
  def test_to_millimeters_int
    skip
    assert_equal 50.8, Inches.to_millimeters(2)
  end

  def test_to_millimeters_float
    skip
    assert_equal 82.296, Inches.to_millimeters(3.24)
  end

  def test_to_centimeters_int
    skip
    assert_equal 5.08, Inches.to_centimeters(2)
  end

  def test_to_centimeters_float
    skip
    assert_equal 8.229600000000001, Inches.to_centimeters(3.24)
  end

  def test_to_meters_int
    skip
    assert_equal 0.0508, Inches.to_meters(2)
  end

  def test_to_meters_float
    skip
    assert_equal 0.08229600000000001, Inches.to_meters(3.24)
  end

  def test_to_kilometers_int
    skip
    assert_equal 5.08e-05, Inches.to_kilometers(2)
  end

  def test_to_kilometers_float
    skip
    assert_equal 8.229600000000001e-05, Inches.to_kilometers(3.24)
  end

end
