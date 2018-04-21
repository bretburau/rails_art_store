class LineItemsController < ApplicationController
  def create
    #todo must be logged in error!!
    @piece = Piece.find(params[:item_id])
    if current_user.current_cart == nil
      @cart = current_user.carts.build
      current_user.current_cart = @cart
    else
      @cart = current_user.current_cart
    end
    @cart.add_item(@piece.id)
    @cart.save
    current_user.save #todo email validation issue?
    redirect_to cart_path(@cart)
  end
end
