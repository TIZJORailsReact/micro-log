class UsersController < ApplicationController
  before_action :authenticate_user,  only: [:current]
  def_param_group :user do
    param :name, String
    param :email, String
    param :password, String
  end
  
  api :GET, '/users', 'List all users'
  def index
    @users = User.all
    render json: @users
  end
  
  api :GET, '/users/current', 'Show current_user data'
  def current
    render json: current_user
  end

  api :POST, '/users/create', 'Create new user'
  param_group :user, as: :create
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201
    else
      render json: user.errors, status: 422
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
    
    def authorize
      return_unauthorized unless current_user
    end
end
