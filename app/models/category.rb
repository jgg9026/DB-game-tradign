class Category < ActiveRecord::Base
	validates :name, presence: true
	validates :name, uniqueness: true
	has_many :categorizations
	has_many :games, through: :categorizations
end
