class Categorization < ActiveRecord::Base
  belongs_to :category
  belongs_to :game
  validates :category_id, :game_id, presence: true
end
