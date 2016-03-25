module ToMetric
#TODO: Figure out how to print unit when returning a Numeric. i.e. 3.meters.to_centimeters => 300 centimeters

  def to_centimeter
    ConvertableUnit.new(base_meters * 100, base_meters, :centimeter)
  end
  alias_method :to_centimeters, :to_centimeter

  def to_millimeter
    ConvertableUnit.new(base_meters * 1000, base_meters, :millimeter)
  end
  alias_method :to_millimeters, :to_millimeter

  def to_meter
    ConvertableUnit.new(base_meters, base_meters, :meter)
  end
  alias_method :to_meters, :to_meter

  def to_kilometer
    ConvertableUnit.new(base_meters * 0.001, base_meters, :kilometer)
  end
  alias_method :to_kilometers, :to_kilometer
end
