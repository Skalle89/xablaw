class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end


  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:id, :photo, :email)

  end
end
