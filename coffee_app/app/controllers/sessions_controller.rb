class SessionsController < ApplicationController
	def create
		roaster = Roaster.from_omniauth(env["omniauth.auth"])
		session[:roaster_id] = roaster.id
		redirect_to root_url
	end

	def destroy
		session[:roaster_id] = nil
		redirect_to root_url
	end
end