require './tests/test_helper'

class ConvertableUnitTest < Minitest::Test

  def test_initialize_value
    assert_equal 20, 20.meter.value
  end

  def test_method_return_class
    assert_kind_of ConvertableUnit, 1.meter
  end

  def test_initalize_base_amount
    assert_equal 15, 15.meters.base_amount
  end

  def test_initalize_unit
    assert_equal :meter, 4.meters.unit
  end

  def test_intialize_unit_conversion_method
    assert_equal :centimeter, 4.meters.to_centimeters.unit
  end

  def test_initialize_base_amount_conversion_method
    assert_equal 20, 20.meter.to_yards.to_inch.base_amount
  end

  def test_addition_returns_ConvertableUnit
    assert_kind_of ConvertableUnit, (5.meters + 4.inches)
  end

  def test_addition_value
    assert_equal 5, (4.meters + 1.meters).value
  end

  def test_addition_base_amount
    assert_equal 5, (4.meters + 100.centimeters).base_amount
  end

  def test_subtraction_returns_ConvertableUnit
    assert_kind_of ConvertableUnit, (5.meters - 4.inches)
  end

  def test_subtraction_value
    assert_equal 3, (4.meters - 1.meters).value
  end

  def test_subtraction_base_amount
    assert_equal 3, (4.meters - 100.centimeters).base_amount
  end

  def test_multiplication_returns_ConvertableUnit
    assert_kind_of ConvertableUnit, (5.meters * 4.inches)
  end

  def test_multiplication_value
    assert_equal 32, (4.meters * 8.meters).value
  end

  def test_multiplication_base_amount
    assert_equal 8, (4.meters * 200.centimeters).base_amount
  end

  def test_division_returns_ConvertableUnit
    assert_kind_of ConvertableUnit, (5.meters / 4.inches)
  end

  def test_division_value
    assert_equal 2, (4.meters / 2.meters).value
  end

  def test_division_base_amount
    assert_equal 2, (4.meters / 200.centimeters).base_amount
  end

end