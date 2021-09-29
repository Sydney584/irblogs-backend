class BlogpostsController < ApplicationController

     # GET /blogposts
  def index
    blogposts = Blogpost.all
    render json: blogposts
  end

# GET /blogposts/:id
def show
    blogpost = Blogpost.find_by(id: params[:id])
    if blogpost
      render json: blogpost
    else
      render json: { error: "Blogpost not found" }, status: :not_found
    end
  end

end
