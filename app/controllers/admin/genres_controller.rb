class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
  
  def index
  end
  
  def edit
  end
  
end
