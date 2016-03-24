module MetricUnits
  def meter
    ConvertableUnit.new(self)
  end
  alias_method :meters, :meter

  def centimeter
    ConvertableUnit.new(self * 0.01)
  end
  alias_method :centimeters, :centimeter

  def millimeter
    ConvertableUnit.new(self * 0.001)
  end
  alias_method :millimeters, :millimeter

  def kilometer
    ConvertableUnit.new(self * 1000)
  end
  alias_method :kilometers, :kilometer

  def decimeter
    ConvertableUnit.new(self * 0.1)
  end
  alias_method :decimeters, :decimeter
end
