class ConvertableUnit
  include ToImperial
  include ToMetric
  ERROR_MESSAGE = 'Please use a unit I can convert!'

  attr_accessor :value, :base_unit, :base_unit_amount

  def initialize(value, base_unit, base_unit_amount = nil)
    @value = value
    @base_unit_amount = base_unit_amount || value
    @base_unit = base_unit
  end

  def inspect
    "#{value} #{base_unit.to_s.en.plural}"
  end

  def +(other)
    raise ArgumentError, ERROR_MESSAGE unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_unit_amount + other.base_unit_amount, base_unit, base_unit_amount + other.base_unit_amount)
  end

  def -(other)
    raise ArgumentError, ERROR_MESSAGE unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_unit_amount - other.base_unit_amount, base_unit, base_unit_amount - other.base_unit_amount)
  end

  def *(other)
    raise ArgumentError, ERROR_MESSAGE unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_unit_amount * other.base_unit_amount, base_unit, base_unit_amount * other.base_unit_amount)
  end

  def /(other)
    raise ArgumentError, ERROR_MESSAGE unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_unit_amount / other.base_unit_amount, base_unit, base_unit_amount / other.base_unit_amount)
  end

end
