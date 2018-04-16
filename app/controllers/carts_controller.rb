class CartsController < ApplicationController
  def show
    redirect_to root_path if !logged_in? ##todo add error? CANCAN?
    @cart = current_user.current_cart unless !logged_in?
    # @cart ||= Cart.new
    # @cart.save ##TODO why do i need this?
    # redirect_to root_path if @cart.id != current_user.current_cart.id
  end

  def checkout
    @cart = Cart.find(params[:id])
    @cart.status = "submitted"
    @cart.save
    current_user.current_cart = Cart.new ##User won't save if current_cart is nil
    current_user.save
    redirect_to pieces_path
  end
end
