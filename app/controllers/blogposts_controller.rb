class BlogpostsController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

     # GET /blogposts
  def index
    blogposts = Blogpost.all.order(content: :desc)
    render json: blogposts, include: :comments
  end

  
# GET /blogposts/:id
def show
    blogpost = Blogpost.find_by(id: params[:id])
      render json: blogpost, methods: [:summary], include: [:user, :comments]
    
    end

    

  private

  def render_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end


end
