class Company < ActiveRecord::Base
	include PgSearch

	pg_search_scope :search_company, :against => [:name]
	has_many :roasters
	has_many :beans, dependent: :destroy
	validates :approved, inclusion: { in: [true, false] }
	validates :name, presence: true
	validates :website, presence: true
	validates :logo, presence: true
	default_scope {order(:name => :ASC)}
end
