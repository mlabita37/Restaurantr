class OrdersController < ApplicationController
  def index
  end

  def create
    order = Order.create(order_params)
    redirect_to new_order_path
  end

  def new
    @order = Order.new
  end

  private

    def order_params
      parameters = params.(:order).require(:item_name, :item_price, :description)
    end

end
