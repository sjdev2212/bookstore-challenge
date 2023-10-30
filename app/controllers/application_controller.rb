class ApplicationController < ActionController::Base
  before_action :update_allowed_parameters, if: :devise_controller?
  before_action :set_books_present

  protected

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      books_path
    else
      super
    end
  end

  def set_books_present
    @books_present = Book.any?
  end

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:role, :email, :password, :password_confirmation)
    end
  end
end
