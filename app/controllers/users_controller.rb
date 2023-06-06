class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(params[:user])

    if @user.save
      # handle a successful save
    else
      render 'new', status: :unprocessable_entity
    end
  end
end
