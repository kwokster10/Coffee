class Flavor < ActiveRecord::Base
	belongs_to :cafes
	validates_presence_of :note, :category, :bean_id #should I require color here?
end
