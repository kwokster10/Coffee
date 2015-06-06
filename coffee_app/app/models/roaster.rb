class Roaster < ActiveRecord::Base
	has_many :beans
	before_save :defaults

	def defaults
		self.role ||= "user"
	end

	def self.omniauth(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_create do |roaster|
			roaster.provider = auth.provider 
			roaster.uid = auth.uid
			roaster.name = auth.info.name
			roaster.oauth_token = auth.credentials.token
			roaster.oauth_expires_at = Time.at(auth.credentials.expires_at)
			roaster.save
		end
	end 
end
