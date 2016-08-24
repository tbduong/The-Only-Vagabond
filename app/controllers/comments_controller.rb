class CommentsController < ApplicationController

  skip_before_action :authenticate!, only: [:show, :index]
  before_action :set_commment, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_not_authorized, only: [:edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
    @cities = City.all
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to user_path(current_user)
  end

  def show
  end

  def edit
  end

  def update
    if @comment.update_attributes(comment_params)
      redirect_to user_path(current_user.id)
    end
  end

  def destroy
    @comment.delete
    redirect_to city_path
  end

  private

  def redirect_if_not_authorized
    redirect_to '/' unless authorized?
  end

  def authorized?
    @comment.user_id == current_user.id
  end

  def set_comment
    @comment = Comment.find_by_id(params[:id])
  end

  def comment_params
   params.require(:comment).permit(:id, :title, :text, :user_id, :city_id)
  end

end
