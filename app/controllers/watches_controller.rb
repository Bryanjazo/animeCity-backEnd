class WatchesController < ApplicationController
  def create
    watch = Watch.new(watch_params)
    if watch.save
      render json: watch
    else
      render json: {message: "No animes"}
    end
  end

  def index
    user = User.find_by(id: params[:user_id])

    watches = user.watches

    render json: watches.to_json(include: [:anime])
  end
end
