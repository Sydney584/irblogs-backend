class CommentsController < ApplicationController

     # GET /comments
  def index
    comments = Comment.all
    render json: comments 
  end
end
