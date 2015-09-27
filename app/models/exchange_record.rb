class ExchangeRecord < ActiveRecord::Base
  #belongs_to :user , :foreign_key => "user_id", :class_name => "User"
  belongs_to :user_game
  belongs_to :exchange
  validates :user_game_id, :exchange_id, :user_id, presence: true
  belongs_to :user, class_name: 'User', foreign_key: "user_id"
end
