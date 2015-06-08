class Beanformed::BeansController < ApplicationController
	before_action :authenticate, except: [:welcome, :direct, :search]
	# before_action :admin, only: [:delete]
	before_action :authorize, only: [:new, :create, :edit, :update, :delete]

	# redirecting root route to namespaced route
	def direct 
		redirect_to beanformed_root_path
	end

	# welcome page; first page when reaching site
	def welcome
		# welcome page with images carousel?
	end

	def search
		search_word = params[:term]
		beans = PgSearch.multisearch("#{search_word}")
		relations = Bean.beans_search("#{search_word}")
		binding.pry
	end

	# SPA with this page if time 
	# shows all beans connected to a particular company
	def index
		@company = Company.find(params[:company_id])
	end

	# new bean form: is only accessible to roaster of same company/admin
	def new
		if @current_user.company_id == params[:company_id] || admin?
			@company = Company.find(params[:company_id])
		else
			redirect_to beanformed_companies_path
		end
	end

	# posting the new bean accounting for validation
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

	# edit bean form if passed authorization
	def edit
		if @current_user.company_id == params[:company_id] || admin?
			@bean = Bean.find(params[:id])
		end
	end

	# shows a specific bean
	def show
		@bean = Bean.find(params[:id])
		@flavors = @bean.flavors.to_json
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










    