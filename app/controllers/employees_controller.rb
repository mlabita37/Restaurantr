class EmployeesController < ApplicationController
before_filter :confirm_logged_in, :only => [:show]
  def index
  end

  def new
    @employee = Employee.new
  end

  def create
    employee = Employee.create(employee_params)
    if employee.save
      session[:employee_id] = employee.id
      redirect_to '/employees'
    else
      flash[:error] = employee.errors.full_messages
      redirect_to new_employee_path
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
  def employee_params
    parameters = params.require(:employee).permit(:username, :password, :password_confirmation, :firstname, :lastname, :address1, :address2, :city, :state, :zip, :phone_number, :dob, :job_title, :is_admin)
  end

end
