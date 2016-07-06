require './tests/test_helper'

class ToImperialTest < Minitest::Test

  def test_to_inch_method_value
    assert_in_delta 127.56, 3.24.meters.to_inches.value, 0.001
  end

  def test_to_foot_method_value
    assert_in_delta 10.629, 3.24.meters.to_feet.value, 0.001
  end

  def test_to_yard_method_value
    assert_in_delta 3.543, 3.24.meters.to_yards.value, 0.001
  end

  def test_to_mile_method_value
    assert_in_delta 0.002, 3.24.meters.to_miles.value, 0.001
  end

end
