class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      login(@user)
      redirect_to @user
    else
      redirect_to ('/')
      flash[:notice] = "email already exists"
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    if params[:id].to_s == current_user[:id].to_s
      redirect_to ('/')
    else
      redirect_to ('/')
      flash[:notice] = "You are not Authorized for this profile"
    end
  end

  private

  def user_params
    params.require(:user).permit(:first, :last, :email, :password, :username, :curr_city)
  end
end
