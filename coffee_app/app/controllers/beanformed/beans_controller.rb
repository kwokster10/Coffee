class Beanformed::BeansController < ApplicationController
	before_action :authenticate
	before_action :admin, only: [:index, :delete, :edit, :update]
	before_action :authorize, only: [:show]

	def welcome
		# welcome page with images carousel
	end

	# SPA with this page 
	def index
		@company = Company.find(params[:company_id])
	end

	# is only accessible to roaster
	def new
	end

	def edit
		@bean = Bean.find(params[:id])

	end

	def show
	end

	def update
	end

	def destroy
	end

	private 
	def bean_params
		params.require(:bean).permit(:name, :origin, :estate, :variety, :processing, :season, :elevation)
	end
end

# beanformed_company_beans GET /beanformed/companies/:company_id/beans(.:format)          beanformed/beans#index
#                              POST     /beanformed/companies/:company_id/beans(.:format)          beanformed/beans#create
#  new_beanformed_company_bean GET      /beanformed/companies/:company_id/beans/new(.:format)      beanformed/beans#new
# edit_beanformed_company_bean GET      /beanformed/companies/:company_id/beans/:id/edit(.:format) beanformed/beans#edit
#      beanformed_company_bean GET      /beanformed/companies/:company_id/beans/:id(.:format)      beanformed/beans#show
#                              PATCH    /beanformed/companies/:company_id/beans/:id(.:format)      beanformed/beans#update
#                              PUT      /beanformed/companies/:company_id/beans/:id(.:format)      beanformed/beans#update
#                              DELETE   /beanformed/companies/:company_id/beans/:id(.:format)      beanformed/beans#destroy








    