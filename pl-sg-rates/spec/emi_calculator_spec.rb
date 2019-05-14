require 'spec_helper'

describe PLRates::EMICalculator do
  it 'calculate citi rates' do
    rate = PLRates::EMICalculator.new
    options = { amount: 10_000, tenure: 36, annual_interest: 8.50 }
    calculated_rate = rate.calculate options
    expect(calculated_rate).to eq(316)
  end
  it 'calculate dbs rates' do
    rate = PLRates::EMICalculator.new
    options = { amount: 10_000, tenure: 36, annual_interest: 5.46 }
    calculated_rate = rate.calculate options
    expect(calculated_rate).to eq(302)
  end
end
