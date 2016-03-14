require_relative 'config.rb'

class Numeric
  include ConvertableErrors
  include ToImperial
  include ToMetric
  include MetricUnits
  include ImperialUnits
end

