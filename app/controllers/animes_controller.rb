class AnimesController < ApplicationController
  def create
    anime = Anime.new(show: params[:show])
  end
end
