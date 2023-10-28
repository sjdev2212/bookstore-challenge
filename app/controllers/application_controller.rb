class ApplicationController < ActionController::Base
  before_action :update_allowed_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    # Customize the redirection logic here
    if resource.is_a?(User) # Check if the resource is a User (Devise's default)
      # Redirect to the dashboard or any other path
      books_path
    else
      super
    end
  end

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:role, :email, :password, :password_confirmation)
    end
  end
end
