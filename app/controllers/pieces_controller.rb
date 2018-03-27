class PiecesController < ApplicationController
  before_action :get_piece, only: [:show]
  ##TODO needs authorizations
  def index
    if params[:artist_id]
      @pieces = Artist.find(params[:artist_id]).pieces
    else
      @pieces = Piece.all
    end
  end

  def show
  end

  def new
    @piece = Piece.new
  end

  def create
    @artist = current_artist
    @piece = @artist.pieces.build(piece_params)
    @piece.save
    redirect_to piece_path(@piece)
  end

  private

  def get_piece
    @piece = Piece.find(params[:id])
  end

  def piece_params
    params.require(:piece).permit(:name, :prints_available, :original_available, category_ids:[], categories:[:name])
  end
end
