class Beanformed::CompaniesController < ApplicationController
	before_action :authenticate
	before_action :admin, only: [:delete]
	before_action :authorize, only: [:show, :edit, :update]

	def index
		if :admin
			@companies = Company.all
		else
			@companies = Company.where({approved: true})
		end
	end

	def show
		@roaster = Roaster.find(session[:roaster_id])
		if :admin
			@company = Company.find(params[:id])
		elsif @roaster.company_id == params[:id]
			@company = Company.find(params[:id])
		else
			redirect_to :index
		end
	end

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(company_params)
		if :admin && @company.save
			flash[:success] = "#{@company.name} was successfully saved!"
			redirect_to beanformed_companies_path
		elsif @company.save
			flash[:success] = "Thanks for registering #{@company.name}! You will be notified when you are approved!"
			@roaster = Roaster.find(session[:roaster_id])
			@roaster.update({company_id: @company.id})
			redirect_to new_beanformed_company_path
		end
	end

	def edit
		@roaster = Roaster.find(session[:roaster_id])
		if :admin
			@company = Company.find(params[:id])
		elsif @roaster.company_id == params[:id]
			@company = Company.find(params[:id])
		else
			redirect_to :index
		end
	end

	def update
		@company = Company.find(params[:id])
		if @company.update(company_params)
			flash[:success] = "Your information has been updated."
			redirect_to beanformed_company_path(@company.id)
		else
			flash[:error] = "Update error! Please check your input fields."
			redirect_to beanformed_company_path(@company.id)
		end
	end

	def destroy
		@company = Company.find(params[:id])
		@company.destroy
		redirect_to beanformed_companies_path
	end

	private
	def company_params
		params.require(:company).permit(:name, :website, :approved)
	end
end






