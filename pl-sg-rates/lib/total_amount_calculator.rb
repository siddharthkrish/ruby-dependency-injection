require 'rates'

module PLRates
  # Personal Loans calculator for Singapore
  class TotalAmountCalculator < Rates::Calculator
    # options for PL SG must include
    # { amount: 10000, tenure: 24, annual_interest: 1.25 }
    # EMI = [P x R x (1+R)^N]/[(1+R)^N-1]
    # P = loan amount
    # R = interest rate per month
    # N = number of months
    def calculate(options)
      emi = PLRates::EMICalculator.new.calculate options
      emi * options[:tenure]
    end
  end
end
