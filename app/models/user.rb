class User < ActiveRecord::Base
	validates :name, :lastname, :email, :password, presence: true
	validates :email, :nickname, uniqueness: true
	validates_length_of :password, minimum: 8
	has_many :games, through: :user_games
	has_many :user_games
  has_many :user1 , class_name: "Exchange", foreign_key: "user1_id"
  has_many :user2 , class_name: "Exchange", foreign_key: "user2_id"
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
