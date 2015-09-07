class UserGame < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
  has_many :exchanges, through: :exchange_records
  has_many :exchange_records
  validates :condition, :user_id, :game_id, presence: true
end
