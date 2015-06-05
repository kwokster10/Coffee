class Flavor < ActiveRecord::Base
	belongs_to :cafes
	validates_presence_of :note, :category, :color, :bean_id
end
