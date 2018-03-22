class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :index]
  before_action :require_login, only: [:cpanel]

  def show
  end

  def cpanel
    @artist = current_user
  end

  def index
  end

  private

  def get_artist
    @artist = Artist.find(params[:id])
  end
  
end
