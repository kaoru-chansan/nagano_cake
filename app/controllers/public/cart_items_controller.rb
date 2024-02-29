class Public::CartItemsController < ApplicationController
  before_action :authenticate_customer!
  layout 'admin'

  def index
  end

end
