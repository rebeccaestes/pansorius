class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #control redirect after sign-in
  def after_sign_in_path_for(user)
    if current_user.profile
    	puts '*' * 50
    	puts 'sign in'
      current_user.profile
  	else
  		    	puts '*' * 50
    	puts 'sign up'
      new_profile_path
    end
  end
end
