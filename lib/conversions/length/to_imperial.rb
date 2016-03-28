module ToImperial
  def to_inch
    ConvertableUnit.new(base_meters * 39.37007874, base_meters, :inch)
  end
  alias_method :to_inches, :to_inch

  def to_foot
    ConvertableUnit.new(base_meters * 3.280839895, base_meters, :foot)
  end
  alias_method :to_feet, :to_foot

  def to_yard
    ConvertableUnit.new(base_meters * 1.0936132983, base_meters, :yard)
  end
  alias_method :to_yards, :to_yard

  def to_mile
    ConvertableUnit.new(base_meters * 0.00062137119224, base_meters, :mile)
  end
  alias_method :to_miles, :to_mile
end
