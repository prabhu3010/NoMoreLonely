class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def configure_devise_params
  	devise_parameter_sanitizer.for(:sign_up) do |u|
  		u.permit(:email, :user_name, :password, :profile_image, :profile_image_cache, :password_confirmation, :mobile_number, :contact, :location)
  	end
  	# devise_parameter_sanitizer.for(:account_update) do |u|
  	# 	u.permit(:profile_image, :email, :username, :password, :password_confirmation ,:current_password, :location, :mobile_number)
  	# end
  end

  def is_email_avail
    user = User.find_by_email(register_params[:email])
    respond_to do |format|
      if user
        format.json { render :json =>  { :status => true }}
      else
        format.json { render :json => { :status => false }}
      end
    end
  end
  def is_username_avail
    user = User.find_by_user_name(register_params[:username])
    respond_to do |format|
      if user
        format.json { render :json =>  { :status => true }}
      else
        format.json { render :json => { :status => false }}
      end
    end
  end
  def register_params
    params.permit(:email,:username)
  end
end
