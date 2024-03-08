class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!
　layout 'admin/items'

  def index
  end

  def new
    @admin_item = Item.new
  end

  def create
    @admin_item = Item.new
    if @admin_item.save
      redirect_to admin_item_path(@item.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end


  private

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price)
  end
end
