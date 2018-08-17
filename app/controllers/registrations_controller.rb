class RegistrationsController < Devise::RegistrationsController
  protected

 def after_sign_up_path_for(resource)
    root_path # Or :prefix_to_your_route
  end

  # Redirect to
  def after_sign_in_path_for(resource_or_scope)
    message_path
  end

end
