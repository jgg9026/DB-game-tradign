class Exchange < ActiveRecord::Base
	validates :user1_id, :user2_id, :request_state, presence: true
	has_many :comments
	has_one :rate
	has_many :user_games, through: :exchange_records
	has_many :exchange_records

end
