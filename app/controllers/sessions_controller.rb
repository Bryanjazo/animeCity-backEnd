class SessionsController < ApplicationController

  def create
    session = Session.new(session_params)
    if session && session.authenthicate(password: params[:password])
      render json: session
    else
      render json: {message: "error"}
  end

  def session_params
    params.require(:session).permit(:user_name, :password)
  end
end
