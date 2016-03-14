module ConvertableErrors
  class InvalidInput < StandardError

    def initialize(msg="Invalid Input. Please use a number")
      super
    end

  end
end
