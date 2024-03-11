class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
  
  def index
    @customers = Customer.all
  end
  
  def show
  end
  
  def edit
  end
  
end
