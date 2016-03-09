module Centimeters

  ####### to_Metric #########

  def self.to_millimeters(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*10).to_f
  end

  def self.to_meters(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.01).to_f
  end

  def self.to_kilometers(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.00001).to_f
  end

  ####### to_Imperial ##########

  def self.to_inches(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.3937007874).to_f
  end

  def self.to_feet(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.03280839895).to_f
  end

  def self.to_yards(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.010936132983).to_f
  end

  def self.to_miles(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.0000062137119224).to_f
  end
end
