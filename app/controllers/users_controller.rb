class UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users, include: [:friends]
  end

  def create
    @user = User.create(username: params[:username], email: params[:email])
    render json: @user
  end
end
