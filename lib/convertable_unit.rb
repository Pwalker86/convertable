class ConvertableUnit
  include ToImperial
  include ToMetric

  attr_accessor :value, :unit, :base_meters

  def initialize(value, base_meters = nil, unit = :meter)
    @value = value
    @base_meters = base_meters || value
    @unit = unit
  end

  def inspect
    "#{value} #{unit.to_s.en.plural}"
  end

  def +(other)
    raise ArgumentError, 'Please use a unit I can convert!' unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_meters + other.base_meters, base_meters + other.base_meters)
  end

  def -(other)
    raise ArgumentError, 'Please use a unit I can convert!' unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_meters - other.base_meters, base_meters - other.base_meters)
  end

  def *(other)
    raise ArgumentError, 'Please use a unit I can convert!' unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_meters * other.base_meters, base_meters * other.base_meters)
  end

  def /(other)
    raise ArgumentError, 'Please use a unit I can convert!' unless other.is_a? ConvertableUnit
    ConvertableUnit.new(base_meters / other.base_meters, base_meters / other.base_meters)
  end

end
