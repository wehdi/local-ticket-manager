
# Global controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?


  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options ={})
    { locale: I18n.locale}.merge options
  end

  protected

  # Allow only the indiocated parameters to pass in the request
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:username, :password, :password_confirmation, :admin)
    end
    
  end
end
