gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/convertable.rb'

class MetricUnitTest < Minitest::Test

  def test_method_return_class
    assert_kind_of ConvertableUnit, 1.meter
  end

  def test_millimeter_method_value
    assert_in_delta 0.00324, 3.24.millimeter.value, 0.001
  end

  def test_centimeter_method_value
    assert_in_delta 0.0324, 3.24.centimeter.value, 0.001
  end

  def test_decimeter_method_value
    assert_in_delta 0.324, 3.24.decimeter.value, 0.001
  end

  def test_meter_method_value
    assert_in_delta 3.24, 3.24.meter.value, 0.001
  end

  def test_kilometer_method_value
    assert_equal 3240, 3.24.kilometer.value
  end

end
