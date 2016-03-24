require './test/test_helper'

class CentimetersTest < Minitest::Test

  ###### Test Valid Input #########
  def test_error_on_invalid_input
    skip
    assert_raises(ConvertableErrors::InvalidInput) {Centimeters.to_inches("t")}
  end

  ###### Test to_metric methods #########
  def test_to_millimeters_int
    skip
    assert_equal 20.0, Centimeters.to_millimeters(2)
  end

  def test_to_millimeters_float
    skip
    assert_equal 32.400000000000006, Centimeters.to_millimeters(3.24)
  end

  def test_to_meters_int
    skip
    assert_equal 0.02, Centimeters.to_meters(2)
  end

  def test_to_meters_float
    skip
    assert_equal 0.032400000000000005, Centimeters.to_meters(3.24)
  end

  def test_to_kilometers_int
    skip
    assert_equal 0.00002, Centimeters.to_kilometers(2)
  end

  def test_to_kilometers_float
    skip
    assert_equal 0.0000324, Centimeters.to_kilometers(3.24)
  end

  ###### Test to_imperial methods #########
  def test_to_inches_int
    skip
    assert_equal 0.7874015748, Centimeters.to_inches(2)
  end

  def test_to_inches_float
    skip
    assert_equal 1.275590551176, Centimeters.to_inches(3.24)
  end

  def test_to_feet_int
    skip
    assert_equal 0.0656167979, Centimeters.to_feet(2)
  end

  def test_to_feet_float
    skip
    assert_equal 0.106299212598, Centimeters.to_feet(3.24)
  end

  def test_to_yards_int
    skip
    assert_equal 0.021872265966, Centimeters.to_yards(2)
  end

  def test_to_yards_float
    skip
    assert_equal 0.03543307086492, Centimeters.to_yards(3.24)
  end

  def test_to_miles_int
    skip
    assert_equal 1.24274238448e-05, Centimeters.to_miles(2)
  end

  def test_to_miles_float
    skip
    assert_equal 2.0132426628576e-05, Centimeters.to_miles(3.24)
  end

end
