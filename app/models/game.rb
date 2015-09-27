class Game < ActiveRecord::Base
	validates :name, :maker, :launch_date, presence: true
	validates :name, uniqueness: true
	has_many :users, through: :user_games
	has_many :user_games
	has_many :platforms, :through => :game_platforms
	has_many :categories, :through => :categorizations
	has_many :game_platforms
end
