class BlogpostsController < ApplicationController

     # GET /blogposts
  def index
    blogposts = Blogpost.all
    render json: blogposts, include: :comments
  end

# GET /blogposts/:id
def show
    blogpost = Blogpost.find_by(id: params[:id])
    if blogpost
      render json: blogpost, include: :user
    else
      render json: { error: "Blogpost not found" }, status: :not_found
    end
  end

end
