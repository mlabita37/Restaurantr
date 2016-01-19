class AdminsController < ApplicationController
before_filter :confirm_logged_in, :only => [:show]
    def index
    end

    def new
      @admin = Admin.new
    end

    def create
      admin = Admin.create(admin_params)
      if admin.save
        session[:admin_id] = admin.id
        redirect_to '/admins/log_in'
      else
        flash[:error] = admin.errors.full_messages
        redirect_to new_admin_path
      end
    end

    def log_in
    end

    def menu
      @items = Item.all
    end

    def show
      @items = Item.all
    end

  private
    def admin_params
      parameters = params.require(:admin).permit(:username, :password, :password_confirmation)
    end

end
