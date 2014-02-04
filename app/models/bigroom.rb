class Bigroom < ActiveRecord::Base

	has_many :subrooms

	validates :name, :activity, :team_mates, :age, :location, :start_time, :end_time, presence: true

	def team_mates_enum
		[['Male & Female','1'],['Male','2'],['Female','3']]
	end
	def age_enum
		[['Bellow 18','1'],['18 -25','2'],['26 -35','3'],['More than 35','3']]
	end
end
