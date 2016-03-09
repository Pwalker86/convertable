module Inches
  def self.to_millimeters(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*25.4).to_f
  end

  def self.to_centimeters(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*2.54).to_f
  end

  def self.to_meters(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.0254).to_f
  end

  def self.to_kilometers(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num*0.0000254).to_f
  end
end
