class Url < ActiveRecord::Base
	validates :current_url, presence: true

	def rando_addy(id)
	 	new_url = (0...10).map { ('a'..'z').to_a[rand(26)] }.join
	 	
	end 
end
