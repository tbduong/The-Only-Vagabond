class UsersController < ApplicationController
  before_action :logged_in?, only: [:show]
  
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
      flash[:notice] = 'email already exists'
      redirect_to('/signup')
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    if id_authentic?
      render :show
    else
      puts id_authentic?
      flash[:notice] = 'You are not Authorized for this profile'
      redirect_to user_path(current_user.id)
    end
  end
  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
   @user = User.find_by_id(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(current_user.id)
    else
      render "new"
  end
end

  private

  def user_params
    params.require(:user).permit(:first, :last, :email, :password, :username, :curr_city)
  end
end
