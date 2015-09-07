class ExchangeRecord < ActiveRecord::Base
  belongs_to :user_game
  belongs_to :exchange
  validates :user_game_id, :exchange_id, :user_id, presence: true

end
