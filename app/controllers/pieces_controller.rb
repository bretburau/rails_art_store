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
    binding.pry
  end

  private

  def get_piece
    @piece = Piece.find(params[:id])
  end
end
