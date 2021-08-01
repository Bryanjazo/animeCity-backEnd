class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new(genre: params[:genre], user_id: params[:user_id], anime_id: params[:anime_id])
    if favorite.save
      render json: favorite
    end
  end


  def index

    user = User.find_by(id: params[:user_id])

    favorites = user.favorites
    render json: favorites.to_json(include: [:anime])
  end
  private


  def favorite_params

  end
end
