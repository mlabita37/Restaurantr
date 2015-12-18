class AdminsController < ApplicationController

  def index
  end

  def create
    user = Admin.create(admin_params)
    redirect_to log_in_admin_path
  end

  def new
    @admin = Admin.new
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def update
    admin = Admin.find(params[:id])
    admin.update(admin_params)
    redirect_to "/admins/#{admin.id}"
  end

  def destroy
    admin = Admin.find(params[:id])
    admin.destroy
    redirect_to admins_path
  end

  private
    def admin_params
      parameters = params.require(:admin).permit(:username, :password)
    end

end
