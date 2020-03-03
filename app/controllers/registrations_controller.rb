class RegistrationsController < ApplicationController

	def create
		@user = User.new(name: params['user']['name'])
		if @user.valid?
			@user.save
			session[:user_id] = @user.id
			render json: {
				status: :created,
				user: @user 
			}
		else
			render json: { 
				status: 500,
				error: @user.errors.full_messages 
			}
		end
	end 
end
