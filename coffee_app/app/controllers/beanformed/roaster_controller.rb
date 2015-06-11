class Beanformed::RoasterController < ApplicationController
	before_action :authenticate
	before_action :admin, only: [:index, :delete]
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
		@companies = Company.all.select(:id, :name)
	end

	
	def update
		@roaster = Roaster.find(params[:id])

		# updates user status by admin
		if admin?
			@roaster.update(roaster_params)
			# if updating status to roaster, notification is sent
			if @roaster.role == "roaster"
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
			end
			redirect_to beanformed_roaster_index_path
		# when a user requests to become a roaster
		elsif @roaster.update(roaster_params)
			flash[:success] = "Thanks for registering! We will notify you when you are approved."
			redirect_to beanformed_companies_path
		else
			redirect_to beanformed_companies_path
		end
	end

	# should I let roaster's delete their accounts?
	def destroy
		@roaster = Roaster.find(params[:id])
		@roaster.destroy
		redirect_to beanformed_root_path
	end

	# sanitizing roaster info
	private 
	def roaster_params
		params.require(:roaster).permit(:company_id, :role, :phone)
	end

end








