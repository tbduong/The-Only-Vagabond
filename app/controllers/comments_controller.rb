class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render :index
  end

  def new
    @comment = Comment.new
    render :new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to city_path
  end

  def show
    @comment = Comment.find_by_id(params[:id])
    render :show
  end

  def destroy
    Comment.delete(params[:id])
    redirect_to city_path
  end

  private
  def comment_params
   params.require(:comment).permit(:id, :name )
  end

end
