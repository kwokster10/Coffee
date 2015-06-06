class Beanformed::RoasterController < ApplicationController
	before_action :authenticate
	before_action :admin, only: [:index, :delete, :edit, :update]
	before_action :authorize, only: [:show]

	# for admin to go in and edit roasters
	def index
		@roasters = Roaster.where({role: "roaster"}, {role: "pending"})
	end

	# shows profile to roaster, so need to include all beans 
	def show
		@roaster = Roaster.find(params[:id])
		@company = Company.find(@roaster.company_id)
	end

	# for a user to apply to be a roaster; links here to apply to be roaster
	def edit
		@roaster = Roaster.find(params[:id])
	end

	# updates their status to pending
	def update
		@roaster = Roaster.find(params[:id])
		if @roaster.update(roaster_params)
			flash[:success] = "Thanks for registering! We will notify you when you are approved."
			redirect_to @roaster
		else
			redirect_to @roaster
		end
	end

	# should I let roaster's delete their accounts?
	def destroy
		@roaster = Roaster.find(params[:id])
		@roaster.destroy
		redirect_to beanformed_root_path
	end

	private 
	def roaster_params
		params.require(:roaster).permit(:company, :role, :phone_number)
	end

end



# put your own credentials here 
	# account_sid = Rails.application.secrets.twilio_sid 
	# auth_token = Rails.application.secrets.twilio_token 
	 
	# # set up a client to talk to the Twilio REST API 
	# @client = Twilio::REST::Client.new account_sid, auth_token 
	 
	# @client.account.messages.create({
	# 	:from => 'Beanformed', 
	# 	:to => # number of roaster, 
	# 	:body => 'Welcome to Beanformed! Your account has been approved. Share knowledge about your bean offerings',  
	# })


 # beanformed_roaster_index POST     /beanformed/roaster(.:format)                              beanformed/roaster#create
 #      new_beanformed_roaster GET      /beanformed/roaster/new(.:format)                          beanformed/roaster#new
 #     edit_beanformed_roaster GET      /beanformed/roaster/:id/edit(.:format)                     beanformed/roaster#edit
 #          beanformed_roaster GET      /beanformed/roaster/:id(.:format)                          beanformed/roaster#show
 #                             PATCH    /beanformed/roaster/:id(.:format)                          beanformed/roaster#update
 #                             PUT      /beanformed/roaster/:id(.:format)                          beanformed/roaster#update
 #                             DELETE   /beanformed/roaster/:id(.:format)                          beanformed/roaster#destroy
 #                             GET|POST /auth/:provider/callback(.:format)                         sessions#create
 #                auth_failure GET|POST /auth/failure(.:format)                                    redirect(301, /)
 #                     signout GET      /signout(.:format)                                         sessions#destroy








