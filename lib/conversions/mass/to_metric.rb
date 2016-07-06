module ToMetric
  def to_centigram
    ConvertableUnit.new(base_unit_amount * 100,  :centigram, base_unit_amount)
  end
  alias_method :to_centigrams, :to_centigram

  def to_milligram
    ConvertableUnit.new(base_unit_amount * 1000, :milligram, base_unit_amount)
  end
  alias_method :to_milligrams, :to_milligram

  def to_gram
    ConvertableUnit.new(base_unit_amount, :gram, base_unit_amount)
  end
  alias_method :to_grams, :to_gram

  def to_kilogram
    ConvertableUnit.new(base_unit_amount * 0.001, :kilogram, base_unit_amount)
  end
  alias_method :to_kilograms, :to_kilogram
end
