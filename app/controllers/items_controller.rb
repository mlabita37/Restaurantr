class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def create
    items = Item.create(items_params)
    if items.save
      redirect_to items_path
    else
    flash[:error] = items.errors.full_messages
    redirect_to new_items_path
    end
  end

  def new
    @items = Item.new
  end

  def update
    items = Item.find(params[:id])
    if items.update(items_params)
      redirect_to items_path
    else
      flash[:error] = items.errors.full_messages
      redirect_to edit_items_path(items.id)
    end
  end

  def edit
    @items = Item.find(params[:id])
  end

  def show
    @items = Item.find(params[:id])
  end

  def delete
    items = Item.find(params[:id])
    redirect_to items_path
  end

private
  def items_params
    params.require(:item).permit(:item_name, :price, :description)
  end

end
