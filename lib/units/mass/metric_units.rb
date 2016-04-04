module MetricUnits
  def gram
    ConvertableUnit.new(self, :gram)
  end
  alias_method :grams, :gram

  def centigram
    ConvertableUnit.new(self * 0.01, :gram)
  end
  alias_method :centigrams, :centigram

  def milligram
    ConvertableUnit.new(self * 0.001, :gram)
  end
  alias_method :milligrams, :milligram

  def kilogram
    ConvertableUnit.new(self * 1000, :gram)
  end
  alias_method :kilograms, :kilogram

  def decigram
    ConvertableUnit.new(self * 0.1, :gram)
  end
  alias_method :decigrams, :decigram
end

