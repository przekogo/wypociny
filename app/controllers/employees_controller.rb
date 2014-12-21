class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def create
    puts params
    user = User.new(email: params[:email], password: params[:password])
    user.role = "employee"
    user.save
    employee = Employee.new(name: params[:name], surname: params[:surname], user_id: User.where(email: params[:email]).last.id)
    puts employee.name
    puts employee.surname
    puts employee.user_id
    employee.save
  end
end