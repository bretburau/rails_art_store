class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :destroy]
  #TODO add authorizations   
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.name = "%{@user.first_name} %{@user.last_name}" if @user.name.nil?
    @user.current_cart ||= Cart.new
    if @user.save
      session[:user_id] = @user.id
      if params[:type] == "artist"
        @user.permissions = 10
        redirect_to artist_path(@user) ##TODO Redirect to Artist's CP?
      else
        redirect_to user_path(@user)
      end
    else
      render new_user_path
    end
  end

  def index
  end
  
  def edit
    redirect_to edit_artist_path(@user) if @user.is_artist?
  end

  def update
    @user.update(user_params)
    if params[:type] = "artist"
      @user.permissions = 10
    elsif params[:type] = "user"
      @user.permissions = 100
    end
    @user.save
  end

  def show
    redirect_to artist_path(@user) if @user.is_artist?
  end

  def destroy ##TODO require admin?
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
  end

  def get_user
    @user = User.find(params[:id])
  end
end
