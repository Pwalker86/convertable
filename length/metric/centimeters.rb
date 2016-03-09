module Centimeters

  ####### to_Metric #########

  def self.to_millimeters(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*10).to_f.round(10)
  end

  def self.to_meters(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.01).to_f.round(10)
  end

  def self.to_kilometers(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.00001).to_f.round(10)
  end

  def self.to_inches(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.3937007874).to_f.round(10)
  end
end
