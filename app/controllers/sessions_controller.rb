class SessionsController < ApplicationController

  def create
    @user = User.find_by(user_name: params[:user_name])

    if @user && @user.authenticate(params[:password])
      # encode token comes from ApplicationController
      render json: @user
    else

      render json: {message: "No users found"}

    end
  end

  def session_params
    params.require(:session).permit(:user_name, :password)
  end
end
