class ConvertableUnit
  include ToImperial
  include ToMetric
  ERROR_MESSAGE = 'Please use a unit I can convert!'

  attr_accessor :value, :unit, :base_amount

  def initialize(value, unit, base_amount = nil)
    @value = value
    @base_amount = base_amount || value
    @unit = unit
  end

  def inspect
    "#{value} #{unit.to_s.en.plural}"
  end

  def +(other)
    raise ArgumentError, ERROR_MESSAGE unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_amount + other.base_amount, unit, base_amount + other.base_amount)
  end

  def -(other)
    raise ArgumentError, ERROR_MESSAGE unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_amount - other.base_amount, unit, base_amount - other.base_amount)
  end

  def *(other)
    raise ArgumentError, ERROR_MESSAGE unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_amount * other.base_amount, unit, base_amount * other.base_amount)
  end

  def /(other)
    raise ArgumentError, ERROR_MESSAGE unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_amount / other.base_amount, unit, base_amount / other.base_amount)
  end

end
