class Categorization < ActiveRecord::Base
  belongs_to :categories
  belongs_to :games
end
