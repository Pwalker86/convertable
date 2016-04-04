require './tests/test_helper'

class ToMetricTest < Minitest::Test

  def test_to_centimeter_method_value
    assert_in_delta 0.324, 3.24.millimeter.to_centimeter.value, 0.001
  end

end
