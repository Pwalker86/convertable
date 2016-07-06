require './tests/test_helper'

class ToMetricTest < Minitest::Test

  describe 'metric lengths' do
    def test_to_centimeter_method_value
      assert_in_delta 0.324, 3.24.millimeter.to_centimeter.value, 0.001
    end

    def test_to_millimeter_method_value
      assert_in_delta 32.4, 3.24.centimeters.to_millimeter.value, 0.001
    end

    def test_to_meter_method_value
      assert_in_delta 0.0324, 3.24.centimeters.to_meter.value, 0.001
    end

    def test_to_kilometer_method_value
      assert_in_delta 0.00324, 3.24.meters.to_kilometer.value, 0.001
    end
  end

  describe 'metric mass' do
    def test_to_centigram_method_value
      assert_in_delta 0.324, 3.24.milligram.to_centigram.value, 0.001
    end

    def test_to_milligram_method_value
      assert_in_delta 32.4, 3.24.centigrams.to_milligram.value, 0.001
    end

    def test_to_gram_method_value
      assert_in_delta 0.0324, 3.24.centigrams.to_gram.value, 0.001
    end

    def test_to_kilogram_method_value
      assert_in_delta 0.00324, 3.24.grams.to_kilogram.value, 0.001
    end
  end

end
