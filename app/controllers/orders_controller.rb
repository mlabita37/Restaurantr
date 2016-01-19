class OrdersController < ApplicationController
before_filter :confirm_logged_in, :only => [:show]
    def index
      @order = Order.new
      @orders = Order.order('created_at ASC').all
    end

    def cashout
      @order = Order.new
    end

    def create
      Order.create(order_params)
      redirect_to orders_path
    end

    def new
      @order = Order.new
    end

    def show
      @order = Order.find(params[:id])
    end

   def update
      order = Order.find(params[:id])
      order.update(order_params)
      redirect_to "/orders"
    end

    def edit
      @orders = Order.find(params[:id])
    end

    def destroy
      Order.delete(params[:id])
      redirect_to orders_path
    end


    private

    def order_params
      params.require(:order).permit(:party_id, :item_id, :quantity)
    end

end
