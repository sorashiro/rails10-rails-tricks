class UsersController < ApplicationController
  def signup
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to :root
  end

  def create_login_session
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      redirect_to :root
    else
      redirect_to :login
    end
  end
  private
  def user_params
    params.require(:user).permit!
  end
end
