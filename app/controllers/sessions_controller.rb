class SessionsController < ApplicationController
  def new
  end

  def create
    raise params.inspect
    @user = User.find_by(email: params[:user][:email])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def destroy

  end
end
