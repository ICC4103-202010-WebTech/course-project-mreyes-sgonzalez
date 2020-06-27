class ApplicationController < ActionController::Base
  # we will need this when create the aside
  #
  #

  protect_from_forgery with: :exception
  before_action :configure_sanitized_params, if: :devise_controller?

  before_action :set_customer

  private

  def configure_sanitized_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation, profile_attributes:[:name, :last_name, :phone, :dob, :address]])
  end

  def current_user_
    if current_user
      current_user
    else
      User.new
    end
  end

  def set_customer
   @current_profile = current_user_
  end
end
