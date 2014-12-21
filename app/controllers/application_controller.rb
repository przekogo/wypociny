class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?

# protected
#   def configure_permitted_parameters
#     devise_parameter_sanitizer.for(:sign_up) << :name
#     devise_parameter_sanitizer.for(:sign_up) << :surname
#     devise_parameter_sanitizer.for(:sign_up) << :gender
#     devise_parameter_sanitizer.for(:sign_up) << :role
#     devise_parameter_sanitizer.for(:sign_up) << :telephone
#     devise_parameter_sanitizer.for(:account_update) << :name << :access
#     devise_parameter_sanitizer.for(:account_update) << :surname << :access
#     devise_parameter_sanitizer.for(:account_update) << :telephone << :access
#   end
end
