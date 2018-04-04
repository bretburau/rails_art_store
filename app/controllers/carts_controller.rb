class CartsController < ApplicationController
  #TODO authorizations
  def show
    @cart = current_user.current_cart unless !current_user.current_cart
  end

  def checkout
    @cart = Cart.find(params[:id])
    @cart.status = "submitted"
    @cart.save
    current_user.current_cart = nil
    current_user.save
    
    redirect_to pieces_path
  end
end
