class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render :index
  end

  def new
    @comment = Comment.new
    @cities = City.all
    render :new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to user_path(current_user)
  end

  def show
    @comment = Comment.find_by_id(params[:id])
    render :show
  end

  def edit
    @comment = Comment.find_by_id(params[:id])
  end

  def update
    @comment = Comment.find_by_id(params[:id])
    if @comment.update_attributes(comment_params)
      redirect_to user_path(current_user.id)
    else
      render "new"

    end
  end

  def destroy
    Comment.delete(params[:id])
    redirect_to city_path
  end

  private
  def comment_params
   params.require(:comment).permit(:id, :title, :text, :user_id, :city_id)
  end

end
