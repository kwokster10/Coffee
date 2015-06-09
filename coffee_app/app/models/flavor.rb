class Flavor < ActiveRecord::Base
	include PgSearch
	pg_search_scope :search_flavor, :against => [:category, :note]
	belongs_to :bean
	validates_presence_of :note, :category, :bean_id 
end
