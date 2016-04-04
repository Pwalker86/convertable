module ToMetric
  def to_centimeter
    ConvertableUnit.new(base_amount * 100,  :centimeter, base_amount)
  end
  alias_method :to_centimeters, :to_centimeter

  def to_millimeter
    ConvertableUnit.new(base_amount * 1000, :millimeter, base_amount)
  end
  alias_method :to_millimeters, :to_millimeter

  def to_meter
    ConvertableUnit.new(base_amount, :meter, base_amount)
  end
  alias_method :to_meters, :to_meter

  def to_kilometer
    ConvertableUnit.new(base_amount * 0.001, :kilometer, base_amount)
  end
  alias_method :to_kilometers, :to_kilometer
end
