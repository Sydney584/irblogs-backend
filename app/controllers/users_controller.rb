class UsersController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # GET /users
  def index
    users = if params[:name]
      User.by_name(params[:name])
      else
        User.all
      end
    render json: users, only: [:first_name, :user_name]
  end
  

# GET /users/:id
def show
  user = User.find(params[:id])
  render json: user
end

# Post/users/:id
def create
  user = User.create(user_params)
  render json: user, status: :created
end

# PUT /users/:id
def update
  user = User.find_by(id: params[:id])
  user.update(user_params)
  render json: user
end


private

  def render_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end
      
  def user_params
    params.permit(:first_name, :last_name, :user_name, :email, :userid, :blogpost)
  end

end

