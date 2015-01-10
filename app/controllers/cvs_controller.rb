class CvsController < ApplicationController

  def new
    @cv = Cv.new
  end

  def create
    cv = Cv.new(cv_params)
    cv.employee_id = current_user.employee_id
    if cv.save
      redirect_to root_path, notice: "Utworzono CV"
    end
  end

private
  def cv_params
    params.require(:cv).permit(:birthdate, :location, :email, :telephone)
  end
end