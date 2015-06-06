class Beanformed::FlavorsController < ApplicationController
	before_action :authenticate
	before_action :authorize

	def new
		if admin? || @current_user.company_id == params[:company_id]
			@categories = ["Floral", "Citrus", "Apple / Pear", "Melon", "Grape", "Tropical Fruit", "Stone Fruit", "Berry", "Dried Fruit", "Chocolate", "Sweet and Sugary", "Nutty", "Grain / Cereal", "Roast", "Spice", "Savory", "Earthy", "Vegetal", "Herbal"]
			@bean = Bean.find(params[:bean_id])
		else
			redirect_to beanformed_company_beans_path(params[:company_id])
		end
	end

	def create
		@flavor = Flavor.new(flavor_params)

		# if other was selected, then replace note value
		if params[:flavor][:note] == "Other" && params[:flavor][:other].length > 2
			@flavor.note = params[:flavor][:other].chomp.capitalize
		# if other was selected but nothing valid was written, flash error
		elsif params[:flavor][:note] == "Other" && params[:flavor][:other].length < 3
			flash[:error] = "Please type a valid custom note when selecting 'Other'."
		end

		# makes sure all values are there before saving
		if @flavor.save
			redirect_to new_beanformed_company_bean_flavor_path(params[:company_id], params[:bean_id])
		else 
			flash[:error] = "Select all fields"
		end
	end

	def destroy
		@flavor = Flavor.find(params[:id])
		@flavor.destroy
		redirect_to new_beanformed_company_bean_flavor_path(params[:company_id], params[:bean_id])
	end

	# sanitizing flavor values
	private
	def flavor_params
		params.require(:flavor).permit(:category, :note, :color, :bean_id)
	end
end


