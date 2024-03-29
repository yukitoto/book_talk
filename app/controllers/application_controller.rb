class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


   protected
    
     def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) << :user_name
        devise_parameter_sanitizer.for(:sign_up) << :image
        devise_parameter_sanitizer.for(:sign_up) << :introduction
        devise_parameter_sanitizer.for(:account_update) << :user_name
        devise_parameter_sanitizer.for(:account_update) << :image
        devise_parameter_sanitizer.for(:account_update) << :introduction
     end
end
