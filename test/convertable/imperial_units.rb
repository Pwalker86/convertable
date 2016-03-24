require './test/test_helper'

class MetricUnitTest < Minitest::Test

  def test_method_return_class
    assert_kind_of ConvertableUnit, 1.feet
  end

  def test_inch_method_value
    assert_in_delta 0.082, 3.24.inches.value, 0.001
  end

  def test_foot_method_value
    assert_in_delta 0.987, 3.24.feet.value, 0.001
  end

  def test_yard_method_value
    assert_in_delta 2.962, 3.24.yard.value, 0.001
  end

  def test_mile_method_value
    assert_in_delta 5214.274, 3.24.mile.value, 0.001
  end

end
