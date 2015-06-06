class SessionsController < ApplicationController
	def create
		roaster = Roaster.omniauth(env["omniauth.auth"])
		session[:roaster_id] = roaster.id
		session[:name] = roaster.name
		session[:role] = roaster.role
		redirect_to beanformed_root_path
	end

	def destroy
		session[:roaster_id] = nil
		flash[:success] = "Remember to sign-out of Facebook if this is a public computer. Enjoy your day!"
		redirect_to beanformed_root_path
	end
end