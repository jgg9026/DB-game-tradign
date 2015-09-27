class Exchange < ActiveRecord::Base
  belongs_to :user1, class_name: 'User', foreign_key: "user1_id"
  belongs_to :user2, class_name: 'User', foreign_key: "user2_id"
	has_many :comments
	has_one :rate
	has_many :user_games, through: :exchange_records
	has_many :exchange_records
  validates :user1_id, :user2_id, :request_status, presence: true
end
