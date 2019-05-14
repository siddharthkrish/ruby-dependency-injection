require 'dry-auto_inject'
require 'total_amount_calculator'
require 'emi_calculator'

# our main class
class WelcomeController < ApplicationController
  include AutoInject['total_amount']

  def index
    if params[:amount] != nil then
      options = { amount: params[:amount].to_i,
                  tenure: params[:tenure].to_i,
                  annual_interest: params[:interest_rate].to_f }

      @message = (total_amount.calculate options).ceil
    end
  end

  def call(options)
    total_amount.calculate options
  end
end
