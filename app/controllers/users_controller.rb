class UsersController < ApplicationController



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
        user = User.first 
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :fightstyle, :cellnum, :weightclass, :image)
    end

end
