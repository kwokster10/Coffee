class Bean < ActiveRecord::Base
	include PgSearch

	has_many :flavors, dependent: :destroy
	belongs_to :company

	pg_search_scope :search_beans, :against => [:name, :origin, :processing, :variety, :estate, :season, :elevation]

	pg_search_scope :beans_search, :associated_against => {
		:flavors => [:category, :note],
		:company => :name
	}

	validates_presence_of :company_id, :name, :origin, :processing, :variety
	default_scope {order(:name => :ASC)}
end
