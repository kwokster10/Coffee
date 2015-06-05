class Bean < ActiveRecord::Base
	has_many :flavors
	belongs_to :company
	validates_presence_of :company_id, :name, :origin, :processing, :variety
end
