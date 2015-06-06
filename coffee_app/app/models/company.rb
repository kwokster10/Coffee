class Company < ActiveRecord::Base
	has_many :roasters
	has_many :beans
	validates :approved, inclusion: { in: [true, false] }
	validates :name, presence: true
	validates :website, presence: true
	default_scope {order(:name => :ASC)}
end
