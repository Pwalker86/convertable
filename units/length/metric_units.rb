module MetricUnits
  def meter
    self
  end
  alias_method :meters, :meter

  def centimeter
    self * 0.01
  end
  alias_method :centimeters, :centimeter

  def millimeter
    self * 0.001
  end
  alias_method :millimeters, :millimeter

  def kilometer
    self * 1000
  end
  alias_method :kilometers, :kilometer

  def decimeter
    self * 0.1
  end
  alias_method :decimeters, :decimeter
end
