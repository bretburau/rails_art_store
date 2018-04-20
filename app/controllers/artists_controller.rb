class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :reports]

  def show
  end

  def reports
    # @recent_cart = Cart.recent_sale_by(@artist) #TODO method returns all carts
    @cart = Cart.most_valuable
  end

  def index
  end


  private

  def get_artist
    @artist = Artist.find(params[:id])
  end
  
end
