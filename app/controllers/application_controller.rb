
# Global controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # Allow only the indiocated parameters to pass in the request
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:email, :username, :password, :password_confirmation, :admin)
    end
  end
end
