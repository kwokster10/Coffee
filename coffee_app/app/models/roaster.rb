class Roaster < ActiveRecord::Base
	def self.from_omniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |roaster|
			roaster.provider = auth.provider
			roaster.uid = auth.uid
			roaster.name = auth.info.name
			roaster.oauth_token = auth.credentials.token
			roaster.oauth_expires_at = Time.at(auth.credentials.expires_at)
			roaster.save!
		end
	end
end
