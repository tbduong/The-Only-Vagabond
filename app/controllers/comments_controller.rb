class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render :index
  end

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end

end
