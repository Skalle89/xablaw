class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_paramters, if: :devise_controller?

  def configure_permitted_paramters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name])
  end
end
