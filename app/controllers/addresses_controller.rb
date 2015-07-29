class AddressesController < ApplicationController

  def index
    if params[:id]
      @addresses = Address.where("user_id = ?", params[:id])
      @user = User.find(params[:id])
      # render :show_user_addresses
    else
      @addresses = Address.all
    end

  end

  def show 
    @address = Address.find(params[:id])
    # @addresses = Address.where("user_id = ?" , params[:id])
  end

  def edit
    @address = Address.find(params[:id])
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to addresses_path({id: @address.user.id})

  end
end
