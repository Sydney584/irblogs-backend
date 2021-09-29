class BlogpostsController < ApplicationController

     # GET /blogposts
  def index
    blogposts = Blogpost.all
    render json: blogposts
  end
end
