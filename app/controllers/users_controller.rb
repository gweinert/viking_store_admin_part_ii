class UsersController < ApplicationController

  def index 
    @users = User.all

  end

  def show
    @user = User.find(params[:id])
  end
  
  def addresses
  end

  def unplaced
    @user = User.find(params[:id])
  end


end
