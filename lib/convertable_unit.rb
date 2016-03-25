# require_relative 'conversions/length/to_metric'
# require_relative 'conversions/length/to_imperial'

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
    "#{value} #{unit.to_s}"
  end

  # def +(other)
  #   if other.is_a?(NewUnit)
  #     NewUnit.new(value + other.value)
  #   else
  #     super
  #   end
  # end

end
