class Beanformed::CompaniesController < ApplicationController
	before_action :authenticate
	before_action :admin, only: [:delete]
	before_action :authorize, only: [:edit, :update]

	# showing all companies to admin / all companies that are approved to anyone
	def index
		if session[:role] == "admin"
			@companies = Company.all
		else
			@companies = Company.where({approved: true})
		end
	end 

	# renders new form
	def new
	end

	# saves company to database depending on credentials 
	def create
		@company = Company.new(company_params)
		# for admin to add a company
		if admin? && @company.save
			flash[:success] = "#{@company.name} was successfully saved!"
			redirect_to beanformed_company_beans_path(@company.id)
		# for all users; new companies come in as approved : false
		elsif @company.save
			flash[:success] = "Thanks for registering #{@company.name}! You will be notified when you are approved!"
			@roaster = Roaster.find(session[:roaster_id])
			@roaster.update({company_id: @company.id, phone: params[:company][:phone], role: "pending"})
			redirect_to new_beanformed_company_path
		end
	end

	# editing a company based on credentials
	def edit
		@roaster = Roaster.find(session[:roaster_id])
		if admin?
			@company = Company.find(params[:id])
		elsif @roaster.company_id == params[:id]
			@company = Company.find(params[:id])
		else
			redirect_to beanformed_companies_path
		end
	end

	# updating a company -- only accessible to admin and roaster linked to company
	def update
		@company = Company.find(params[:id])
		if @company.update(company_params)
			flash[:success] = "#{@company.name} has been updated."
			redirect_to beanformed_companies_path
		else
			flash[:error] = "Update error! Please check your input fields."
			redirect_to beanformed_companies_path
		end
	end

	# deletes a company and all beans; admin only
	def destroy
		@company = Company.find(params[:id])
		@company.destroy
		redirect_to beanformed_companies_path
	end

	# sanitizing data
	private
	def company_params
		params.require(:company).permit(:name, :website, :logo, :approved)
	end
end






