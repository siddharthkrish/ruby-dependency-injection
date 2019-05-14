# config/initializers/auto_inject.rb
class InvFe::Container
  extend Dry::Container::Mixin

  register('total_amount') do
    Rails.configuration.x.total_calculator.new
  end

  register('emi') do
    Rails.configuration.x.emi_calculator.new
  end
end

AutoInject = Dry::AutoInject(InvFe::Container)
