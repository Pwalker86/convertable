module ToImperial
  def to_inches
    ConvertableUnit.new(base_meters * 39.37007874, base_meters, :inches)
  end

  def to_feet
    ConvertableUnit.new(base_meters * 3.280839895, base_meters, :feets)
  end

  def to_yards
    ConvertableUnit.new(base_meters * 1.0936132983, base_meters, :yards)

  end

  def to_miles
    ConvertableUnit.new(base_meters * 0.00062137119224, base_meters, :miles)
  end
end
