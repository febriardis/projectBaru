class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	helper_method :current_user, :user_logged_in?

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def user_logged_in?
	  	!!current_user
	end

	def must_login
	  	if !user_logged_in?
	  		redirect_to root_path
	  	end  	
	end
end
