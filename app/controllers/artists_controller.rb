class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :reports]

  def show
  end

  def reports
    @cart = Cart.submitted.most_valuable
  end

  def index
  end


  private

  def get_artist
    @artist = Artist.find(params[:id])
  end
  
end
