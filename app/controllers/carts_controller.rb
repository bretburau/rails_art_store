class CartsController < ApplicationController
  #TODO authorizations
  def show
    @cart = current_user.current_cart 
  end
end
