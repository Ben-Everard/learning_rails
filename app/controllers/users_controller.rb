class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@users = User.new
  end

  def create
  	@users = User.new(params[:user])
    if @users.save
      redirect_to @users, notice: 'Post was successfully created.'
    else
      render action: "new"
    end
  end
  def show
  	@users = User.find(params[:id])
  end
end
