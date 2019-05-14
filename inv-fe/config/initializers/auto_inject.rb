#config/initializers/auto_inject.rb
class InvFe::Container
  extend Dry::Container::Mixin

  register('total_amount') do
    PLRates::TotalAmountCalculator.new
  end

  register('emi') do
    PLRates::EMICalculator.new
  end
end

AutoInject = Dry::AutoInject(InvFe::Container)
