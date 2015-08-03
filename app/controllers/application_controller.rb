class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_devise_permitted_parameters
    registration_params = [:name, :lastname, :email, :password, :password_confirmation, :tel, company_attributes:[:short_name, :name, :ardress, :ardress_do_odsylki, :email, :tel, :nip]]
    #
    # umozliwia zapisanie w/w parametrow podczas rejestracji
    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    end
  end
  
  def after_sign_in_path_for(resource)
    logger.debug "====== START after_sign_in_path_for "
    logger.debug "Resource inspect !! = #{resource.attributes.inspect}"
    logger.debug "Resource  = #{resource}"
    #stored_location_for(resource) ||
    if resource.is_a?(User) && resource.company_id #resource.can_publish?
      logger.debug "---> super -> strona startowa"
      super #finish_registration_url # publisher_url
    else
      logger.debug "---> finish_registration_url !!"
      finish_registration_url
    end
  end
end
