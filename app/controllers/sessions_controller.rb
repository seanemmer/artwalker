class SessionsController < ApplicationController

	def new
	end

	def create

#       if successful login to Tesla
			user = User.find_by(email: params[:email].downcase)
			if user
				sign_in user
				redirect_to root_path
			else
#       impelemnt captcha test
				@user = User.new(user_params)
				if @user.save
					sign_in @user
					flash[:success] = "Congratulations on your first sign in!"
					redirect_to root_path
				else
					flash.now[:danger] = "Invalid email"
					render 'new'
				end				
			end
#		else
#       	flash.now[:danger] = 'Email/Password combination rejected by Vehicle Server'
#			render 'new'
	end

	def destroy
		sign_out
		redirect_to root_path
	end

	private

		def user_params
      		params.permit(:email)
    	end


end
