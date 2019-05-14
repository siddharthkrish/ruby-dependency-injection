module Rates
  # the interface that all rates should implement
  class Calculator
    # the method that all calculators must implement
    # the input will be a hash of the attributes required to
    # calculate the rates. output should be an integer
    # with the calculated rate, nil or RuntimeError
    def calculate(options)
      raise 'did you forget to implement the calculate method'
    end
  end
end
