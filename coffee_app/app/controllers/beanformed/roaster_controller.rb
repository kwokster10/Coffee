class Beanformed::RoasterController < ApplicationController
	before_action :authenticate
	before_action :admin, only: [:index, :delete, :edit, :update]
	before_action :authorize, only: [:show]

	# for admin to go in and edit roasters
	def index
		@roasters = Roaster.where({role: ["pending", "roaster"]})
	end

	# shows profile to roaster, so need to include all beans 
	def show
		@roaster = Roaster.find(params[:id])
		@company = Company.find(@roaster.company_id)
	end

	# for admin to edit if a user upgrades to roaster status
	def edit
		@roaster = Roaster.find(params[:id])
	end

	# updates their status to pending
	def update
		@roaster = Roaster.find(params[:id])
		if admin?
			@roaster.update(roaster_params)
			puts @roaster
			account_sid = Rails.application.secrets.twilio_sid 
			auth_token = Rails.application.secrets.twilio_token 
			admin_number = Rails.application.secrets.admin_number
			
			# set up a client to talk to the Twilio REST API 
			@client = Twilio::REST::Client.new(account_sid, auth_token)

			# notifying roaster that they have been approved via sms
			@client.account.messages.create({
				:from => "+1#{admin_number}", 
				:to => @roaster.phone, 
				:body => 'Welcome to Beanformed! Your account has been approved. Start sharing knowledge about your bean offerings.',  
			})

		elsif @roaster.update(roaster_params)
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
		params.require(:roaster).permit(:company, :role, :phone)
	end

end



# put your own credentials here 


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








