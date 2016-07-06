module ToImperial
  def to_inch
    ConvertableUnit.new(base_unit_amount * 39.37007874, :inch, base_unit_amount)
  end
  alias_method :to_inches, :to_inch

  def to_foot
    ConvertableUnit.new(base_unit_amount * 3.280839895, :foot, base_unit_amount)
  end
  alias_method :to_feet, :to_foot

  def to_yard
    ConvertableUnit.new(base_unit_amount * 1.0936132983, :yard, base_unit_amount)
  end
  alias_method :to_yards, :to_yard

  def to_mile
    ConvertableUnit.new(base_unit_amount * 0.00062137119224, :mile, base_unit_amount)
  end
  alias_method :to_miles, :to_mile
end
