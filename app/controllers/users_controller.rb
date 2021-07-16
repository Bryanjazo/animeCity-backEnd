class UsersController < ApplicationController
  
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: {message: "error"}
    end
  end




  private

  def user_params
    params.require(:user).permit(:user_name, :email, :password)
  end
end
