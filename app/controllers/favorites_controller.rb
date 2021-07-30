class FavoritesController < ApplicationController
  def create
    favorite = Favortie.new(genre: params[:genre])
    if favorite.save
      render json: favorite
    end
  end


  def index
    user = User.find_by(id: params[:id])
    favorites = user.favorites
    render json: favorites.to_json[include: [:animes]]
  end
  private


  def favorite_params

  end
end
