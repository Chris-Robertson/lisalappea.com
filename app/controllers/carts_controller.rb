class CartsController < ApplicationController
  Braintree::Configuration.environment = :sandbox
  Braintree::Configuration.merchant_id = ENV['MERCHANT_ID']
  Braintree::Configuration.public_key = ENV['PUBLIC_KEY']
  Braintree::Configuration.private_key = ENV['PRIVATE_KEY']

  def show
    @order_items = current_order.order_items
  end
end
