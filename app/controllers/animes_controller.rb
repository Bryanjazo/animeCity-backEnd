class AnimesController < ApplicationController
  def create
    anime = Anime.new(title: params[:title], episodes: params[:episodes], url: params[:url], image_url: params[:image_url], description: params[:description], genre: params[:genre])
  end
end
