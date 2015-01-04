class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def create
    user = User.new(email: params[:email], password: params[:password])
    user.role = "employee"
    if user.save
      employee = Employee.new(name: params[:name], surname: params[:surname], user_id: User.where(email: params[:email]).last.id)
      employee.save
    end
    redirect_to new_user_session_path
  end
end