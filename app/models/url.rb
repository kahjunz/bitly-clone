class Url < ActiveRecord::Base

	before_validation :shorten #before_create saves the entry automatically
	validates :long_url, presence: true
	validates :short_url, uniqueness: true

	def shorten
		self.short_url = "http://pendek.nya/" + SecureRandom.base64(6)			
	end

end


