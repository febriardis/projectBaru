class HomeController < ApplicationController
	before_action :must_login, only: [:home]	
	layout 'home'

  	def login
  		user = User.find_by(username: params[:username])
  		if user && user.authenticate(params[:password])
  			session[:user_id] = user.id
  			redirect_to news_path
  		else
  			redirect_to root_path
  		end
  	end
  	
  	def index
  		@user = User.new
  	end

	def daftar
	  	@user = User.new(params_user)
	  	if @user.save
	  		redirect_to root_path, notice: 'Data berhasil disimpan'
	  	else
	  		redirect_to root_path, notice: 'Data gagal disimpan'
	  	end
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end

	private
	def params_user
	  	params.require(:user).permit(:nama, :username, :password, :tgl_lahir)
	end
end
