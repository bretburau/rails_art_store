class PiecesController < ApplicationController

  def index
    if params[:artist_id]
      @pieces = Artist.find(params[:artist_id]).pieces
    else
      @pieces = Piece.all
    end
  end

  def show
    @piece = Piece.find(params[:id])
  end
end
