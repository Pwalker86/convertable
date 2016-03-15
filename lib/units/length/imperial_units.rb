module ImperialUnits
  def inch
    self * 0.0254
  end
  alias_method :inches, :inch

  def foot
    self * 0.3048
  end
  alias_method :feet, :foot

  def yard
    self * 0.9144
  end
  alias_method :yards, :yard

  def mile
    self * 1609.344
  end
  alias_method :miles, :mile

end
