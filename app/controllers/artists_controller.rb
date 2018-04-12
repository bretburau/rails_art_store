class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show]

  def show
    @recent_cart = Cart.recent_sale_by(@artist)
  end

  def index
  end


  private

  def get_artist
    @artist = Artist.find(params[:id])
  end
  
end
