require 'rates'

module PLRates
  # Personal Loans calculator for Singapore
  class EMICalculator < Rates::Calculator
    def initialize
      Rails.logger = Logger.new(STDOUT)
    end

    # options for PL SG must include
    # { amount: 10000, tenure: 24, annual_interest: 1.25 }
    # EMI = [P x R x (1+R)^N]/[(1+R)^N-1]
    # P = loan amount
    # R = interest rate per month
    # N = number of months
    def calculate(options)
      rate = options[:annual_interest] / (12 * 100) # monthly
      principal = options[:amount]
      tenure = options[:tenure] # monthly

      Rails.logger.info "rate: #{rate}, principal: #{principal}, tenure: #{tenure}"
      ((principal * rate * (1 + rate)**tenure) / ((1 + rate)**tenure - 1))
    end
  end
end
