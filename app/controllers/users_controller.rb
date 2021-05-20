class UsersController < ApplicationController
  before_action :authenticate

  def index
    users = User.all
    render json: users
  end

  def new
    user = User.all
    render json: user
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def edit
    user = User.all
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  def login
    user = User.last
    render json: user
    # user = User.find_by(username: params[:username])

    # if user && user.authenticate(params[:password])
    #     render json: user
    # else
    # render json: {errors: ["invaild username or password"]}, status: :unauthorized
    # end
  end

  def me
    user = User.first
    render json: user
  end

  def signup
    user_params =
      params.permit(
        :username,
        :password,
        :image,
        :weightclass,
        :cellnum,
        :fightstyle,
      )

    user = User.create(user_params)

    if user.valid?
      render json: user, status: :created
    else
      render json: {
               errors: user.errors.full_messages,
             },
             status: :unprocessable_entity
    end
  end

  private

  def user_params
    params
      .require(:user)
      .permit(:username, :password, :fightstyle, :cellnum, :weightclass, :image)
  end
end
