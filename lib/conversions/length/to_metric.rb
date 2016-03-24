module ToMetric
#TODO: Figure out how to print unit when returning a Numeric. i.e. 3.meters.to_centimeters => 300 centimeters

  def to_centimeters
    ConvertableUnit.new(base_meters * 100, base_meters, :centimeters)
  end

  def to_millimeters
    ConvertableUnit.new(base_meters * 1000, base_meters, :millimeters)
  end

  def to_meters
    ConvertableUnit.new(base_meters, base_meters, :meters)
  end

  def to_kilometers
    ConvertableUnit.new(base_meters * 0.001, base_meters, :kilometers)
  end
end
