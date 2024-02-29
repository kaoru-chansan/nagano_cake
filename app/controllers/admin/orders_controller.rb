class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def show
    @order = Order.find(params[:id])
    @order.customer_id = @order.customer.id

  end

end
