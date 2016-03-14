module ToMetric
#TODO: Figure out how to print unit when returning a Numeric. i.e. 3.meters.to_centimeters => 300 centimeters

  def to_centimeters
    self * 100
  end

  def to_millimeters
    self * 1000
  end

  def to_meters
    self
  end

  def to_kilometers
    self * 0.001
  end
end
