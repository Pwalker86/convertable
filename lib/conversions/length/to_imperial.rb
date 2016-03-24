module ToImperial
  def to_inche
    ConvertableUnit.new(base_meters * 39.37007874, base_meters, :inche)
  end
  alias_method :to_inches, :to_inche

  def to_feet
    ConvertableUnit.new(base_meters * 3.280839895, base_meters, :feet)
  end
  alias_method :to_feets, :to_feet

  def to_yard
    ConvertableUnit.new(base_meters * 1.0936132983, base_meters, :yard)
  end
  alias_method :to_yards, :to_yard

  def to_miles
    ConvertableUnit.new(base_meters * 0.00062137119224, base_meters, :mile)
  end
  alias_method :to_miless, :to_miles
end
