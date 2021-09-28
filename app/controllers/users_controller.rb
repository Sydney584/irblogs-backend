class UsersController < ApplicationController

    # GET /users
  def index
    users = User.all
    render json: users
  end
  

# GET /users/:id
def show
  user = User.find_by(id: params[:id])
  if user
    render json: user
  else
    render json: { error: "User not found" }, status: :not_found
  end
end

end
