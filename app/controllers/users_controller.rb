class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      if params[:type] == "artist"
        @user.permissions = 10
        redirect_to artist_path(@user) ##TODO Redirect to Artist's CP
      else
        redirect_to user_path(@user)
      end
    else
      render new_user_path
    end
  end
  
  def edit
  end

  def show #TODO Flesh out show page
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
  end

  def get_user
    @user = User.find(params[:id])
  end
end
