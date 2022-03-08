class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:id, :photo, :email)
  end
end
