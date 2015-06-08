class Beanformed::FlavorsController < ApplicationController
	# limiting actions to only admin and roaster
	before_action :authenticate
	before_action :authorize

	# form for new flavor note; sets up dropdown
	def new
		if admin? || @current_user.company_id == params[:company_id]
			@categories = ["Floral", "Citrus", "Apple / Pear", "Melon", "Grape", "Tropical Fruit", "Stone Fruit", "Berry", "Dried Fruit", "Chocolate", "Sweet and Sugary", "Nutty", "Grain / Cereal", "Roast", "Spice", "Savory", "Earthy", "Vegetal", "Herbal"]
			@bean = Bean.find(params[:bean_id])
		else
			redirect_to beanformed_company_beans_path(params[:company_id])
		end
	end

	# saving new flavor to db
	def create
		@flavor = Flavor.new(flavor_params)
		
		# matching corresponding color to selected category
		colors = {"Floral": "rgb(255, 92, 197)", "Citrus": "rgb(255, 168, 66)", "Apple / Pear": "rgb(66, 217, 13)", "Melon": "rgb(98, 255, 160)", "Grape": "rgb(119, 217, 67)", "Tropical Fruit": "rgb(255, 244, 0)", "Stone Fruit": "rgb(255, 124, 0)", "Berry": "rgb(208, 27, 232)", "Dried Fruit": "rgb(184, 83, 12)", "Chocolate": "rgb(97, 55, 3)", "Sweet and Sugary": "rgb(255, 254, 229)", "Nutty": "rgb(143, 82, 5)", "Grain / Cereal": "rgb(196, 126, 166)", "Roast": "rgb(76, 50, 0)", "Spice": "rgb(255, 0 , 33)", "Savory": "rgb(132, 21, 7)", "Earthy": "rgb(66, 36, 0)", "Vegetal": "rgb(43, 71, 0)", "Herbal": "rgb(21, 151, 20)"}

		@flavor.color = colors[:"#{params[:flavor][:category]}"]

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

	# deleting a flavor note
	def destroy
		@flavor = Flavor.find(params[:id])
		@flavor.destroy
		redirect_to new_beanformed_company_bean_flavor_path(params[:company_id], params[:bean_id])
	end

	# sanitizing flavor values
	private
	def flavor_params
		params.require(:flavor).permit(:category, :note, :bean_id)
	end
end


