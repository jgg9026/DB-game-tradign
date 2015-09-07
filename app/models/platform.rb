class Platform < ActiveRecord::Base
	validates :platform, :console, presence: true
	has_many :game_platforms
	has_many :games, through: :game_platforms
end
