class CommentsController < ApplicationController
  def index
    @user = User.findById(session[:user_id])
    @comments = @user.comments
  end
end
