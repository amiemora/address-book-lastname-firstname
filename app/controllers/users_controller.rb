class UsersController < ApplicationController
  before_action :authenticate, except: %i[new create]

  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new user_params
    if @user.save
      login(@user)
      redirect_to root_path, notice: "You successfully signed up!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(%i[email password password_confirmation])
  end
end
