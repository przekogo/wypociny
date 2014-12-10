class UsersController < ApplicationController

def show
  @user=User.find(params[:id])
end



private
  def user_params
    params.require(:user).permit(:name, :surname, :email, :password, :password_confirmation, :telephone, :role, :gender)
  end

end