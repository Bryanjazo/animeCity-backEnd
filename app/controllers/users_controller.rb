class UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      render json: {user: user, status: 200}
    else
      render json: {message: "error"}
    end
  end



def show
  user = User.find_by(id: params[:id])
  if user

    render json: user
  else
    render json: {message: "no user found"}
  end
end

def update
  user = User.find_by(id: params[:id])
  user.update(user_name: params[:user_name], email: params[:email])
  if user.save
    render json: user
  else
    render json: {message: "Could Not Update User"}
  end
end
  private

  def user_params
    params.require(:user).permit(:user_name, :email, :password)
  end
end
