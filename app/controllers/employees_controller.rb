class EmployeesController < ApplicationController

  def new
    @company = Company.new
  end
end