class ApplicationController < ActionController::Base 
  #before_action :configure_permitted_parameters, if: :devise_controller?
  #before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
#deviceに修正が必要な場合はこちらに書く