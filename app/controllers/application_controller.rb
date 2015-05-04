class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit :role,
      :name, :email, :password, :password_confirmation}
  end
  def authenticate_active_admin_user!
        authenticate_user!
        unless current_user.admin?
            flash[:alert] = "You are not authorized to access this resource!"
            redirect_to root_path
        end
    end
end
