# require_relative 'conversions/length/to_metric'
# require_relative 'conversions/length/to_imperial'

class ConvertableUnit
  # include ToImperial
  # include ToMetric

  attr_accessor :value, :unit

  def initialize(value, unit)
    @value, @unit = value, unit
  end

  def inspect
    "#{@value} meters"
  end

  # def +(other)
  #   if other.is_a?(NewUnit)
  #     NewUnit.new(value + other.value)
  #   else
  #     super
  #   end
  # end

end