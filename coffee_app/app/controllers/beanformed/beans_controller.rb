class Beanformed::BeansController < ApplicationController
	before_action :authenticate, except: [:welcome, :direct]
	before_action :admin, only: [:delete, :edit, :update]
	before_action :authorize, only: [:new, :create]

	def direct 
		redirect_to beanformed_root_path
	end

	def welcome
		# welcome page with images carousel
	end

	# SPA with this page 
	def index
		@company = Company.find(params[:company_id])
	end

	# is only accessible to roaster of same company/admin
	def new
		if @current_user.company_id == params[:company_id] || admin?
			@company = Company.find(params[:company_id])
		else
			redirect_to beanformed_companies_path
		end
	end

	def create
		@bean = Bean.new(bean_params)
		if @bean.save
			flash[:success] = "#{@bean.name} saved. Now add the flavor notes for it!"
			redirect_to new_beanformed_company_bean_flavor_path(params[:company_id], @bean.id)
		else
			flash[:error] = "Save error. Please check your inputs."
			redirect_to new_beanformed_company_bean_path(params[:company_id])
		end
	end

	def edit
		@bean = Bean.find(params[:id])
	end

	def show
		@bean = Bean.find(params[:id])
	end

	def update
		@bean = Bean.find(params[:id])
		puts @bean
		if @bean.update(bean_params)
			redirect_to beanformed_company_bean_path
		else
			flash[:error] = "Please check your input fields."
			redirect_to beanformed_company_bean_path
		end
	end

	def destroy
		@bean = Bean.find(params[:id])
		if @bean.destroy
			flash[:success] = "Deleted!"
			redirect_to beanformed_companies_path
		else
			flash[:error] = "You don't have the rights to delete #{@bean.name}."
			redirect_to beanformed_companies_path
		end
	end

	private 
	def bean_params
		params.require(:bean).permit(:company_id, :name, :origin, :estate, :variety, :processing, :season, :elevation)
	end
end










    