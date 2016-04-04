require './tests/test_helper'

class MetricUnitsTest < Minitest::Test

  describe 'metric lengths' do
    def test_millimeter_method_value
      assert_in_delta 0.00324, 3.24.millimeter.value, 0.001
    end

    def test_centiimeter_method_value
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

  describe 'metric mass' do
    def test_milligram_method_value
      assert_in_delta 0.00324, 3.24.milligram.value, 0.001
    end

    def test_centiigram_method_value
      assert_in_delta 0.0324, 3.24.centigram.value, 0.001
    end

    def test_decigram_method_value
      assert_in_delta 0.324, 3.24.decigram.value, 0.001
    end

    def test_gram_method_value
      assert_in_delta 3.24, 3.24.gram.value, 0.001
    end

    def test_kilogram_method_value
      assert_equal 3240, 3.24.kilogram.value
    end
  end

end
