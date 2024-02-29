class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
  
  def index
  end
  
  def new
  end
  
  def show
  end
    
  def edit
  end
   
end
