class Flavor < ActiveRecord::Base
	belongs_to :bean
	validates_presence_of :note, :category, :bean_id 
end
