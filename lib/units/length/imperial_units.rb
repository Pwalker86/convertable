module ImperialUnits
  def inch
    ConvertableUnit.new(self * 0.0254, :inch)
  end
  alias_method :inches, :inch

  def foot
    ConvertableUnit.new(self * 0.3048, :foot)
  end
  alias_method :feet, :foot

  def yard
    ConvertableUnit.new(self * 0.9144, :yard)
  end
  alias_method :yards, :yard

  def mile
    ConvertableUnit.new(self * 1609.344, :mile)
  end
  alias_method :miles, :mile

end
