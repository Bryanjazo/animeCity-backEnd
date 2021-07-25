class AnimesController < ApplicationController
  def create
    anime = Anime.new(title: params[:title], episodes: params[:episodes], url: params[:url], image_url: params[:image_url], description: params[:description], genre: params[:genre])
    if anime.save
      render json: anime
    else
      render json: {message: "something went wrong"}
    end
  end


  def index
    animes = Anime.all
    render json: animes
  end

  def show
    anime = Anime.find_by(id: params[:id])
    if anime.valid?
      render json: anime
    else
      render json: {message: "No anime found"}
    end
end

end
