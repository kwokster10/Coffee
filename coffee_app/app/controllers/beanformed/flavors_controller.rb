class Beanformed::FlavorsController < ApplicationController
	before_action :authenticate
	before_action :admin, only: [:delete]
	before_action :authorize, only: [:show, :edit, :update]

	def new
		@categories = ["Floral", "Citrus", "Apple / Pear", "Melon", "Grape", "Tropical Fruit", "Stone Fruit", "Berry", "Dried Fruit", "Chocolate", "Sweet and Sugary", "Nutty", "Grain / Cereal", "Roast", "Spice", "Savory", "Earthy", "Vegetal", "Herbal"]
		@bean = Bean.find(params[:bean_id])
		@flavor = Flavor.new
	end

	private
	def flavor_params
		params.require(:flavor).permit(:category, :note, :color, :bean_id)
	end
end


