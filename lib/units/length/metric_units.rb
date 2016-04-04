module MetricUnits
  def meter
    ConvertableUnit.new(self, :meter)
  end
  alias_method :meters, :meter

  def centimeter
    ConvertableUnit.new(self * 0.01, :meter)
  end
  alias_method :centimeters, :centimeter

  def millimeter
    ConvertableUnit.new(self * 0.001, :meter)
  end
  alias_method :millimeters, :millimeter

  def kilometer
    ConvertableUnit.new(self * 1000, :meter)
  end
  alias_method :kilometers, :kilometer

  def decimeter
    ConvertableUnit.new(self * 0.1, :meter)
  end
  alias_method :decimeters, :decimeter
end
