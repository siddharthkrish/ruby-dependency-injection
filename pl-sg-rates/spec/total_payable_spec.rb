require 'spec_helper'

describe PLRates::TotalAmountCalculator do
  it 'calculate citi rates' do
    rate = PLRates::TotalAmountCalculator.new
    options = { amount: 10_000, tenure: 36, annual_interest: 8.50 }
    total_amount = rate.calculate options
    expect(total_amount).to eq(11_376)
  end
  it 'calculate dbs rates' do
    rate = PLRates::TotalAmountCalculator.new
    options = { amount: 10_000, tenure: 36, annual_interest: 5.46 }
    total_amount = rate.calculate options
    expect(total_amount).to eq(10_872)
  end
end
