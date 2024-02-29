class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
  
  def index
  end
  
  def show
  end
  
  def edit
  end
  
end
