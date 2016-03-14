module ToImperial
  def to_inches
    (self * 39.37007874).to_f
  end

  def to_feet
    (self * 3.280839895).to_f
  end

  def to_yards
    (self * 1.0936132983).to_f
  end

  def to_miles
    (self * 0.00062137119224).to_f
  end
end
