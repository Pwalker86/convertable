module ToMetric
  def to_centimeter
    ConvertableUnit.new(base_unit_amount * 100,  :centimeter, base_unit_amount)
  end
  alias_method :to_centimeters, :to_centimeter

  def to_millimeter
    ConvertableUnit.new(base_unit_amount * 1000, :millimeter, base_unit_amount)
  end
  alias_method :to_millimeters, :to_millimeter

  def to_meter
    ConvertableUnit.new(base_unit_amount, :meter, base_unit_amount)
  end
  alias_method :to_meters, :to_meter

  def to_kilometer
    ConvertableUnit.new(base_unit_amount * 0.001, :kilometer, base_unit_amount)
  end
  alias_method :to_kilometers, :to_kilometer
end
