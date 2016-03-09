module Inches
  def self.to_centimeters(num)
    raise ConvertableErrors::InvalidInput unless num.is_a? Numeric
    (num * 2.54).to_f.round(10)
  end
end
