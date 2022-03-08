class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def new
    @user = User.new
  end
end
