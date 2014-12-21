class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def create
    user = User.new(email: params[:email], password: params[:password])
    user.role = "employee"
    user.save
    employee = Employee.new(name: params[:name], surname: params[:surname], user_id: User.where(email: params[:email]).last.id)
    employee.save
  end
end