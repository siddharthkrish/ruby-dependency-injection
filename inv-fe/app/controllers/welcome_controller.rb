require 'dry-auto_inject'

# our main class
class WelcomeController < ApplicationController
  include AutoInject['total_amount', 'emi']

  def index
    return if params[:amount].nil?

    options = { amount: params[:amount].to_i,
                tenure: params[:tenure].to_i,
                annual_interest: params[:interest_rate].to_f }

    @message = (total_amount.calculate options).ceil
    @emi_amount = (emi.calculate options).ceil
  end

  def call(options)
    total_amount.calculate options
  end
end
