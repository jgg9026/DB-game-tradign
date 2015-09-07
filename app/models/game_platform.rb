class GamePlatform < ActiveRecord::Base
  belongs_to :game
  belongs_to :platform
  validates :game_id, :platform_id, presence: true

end
