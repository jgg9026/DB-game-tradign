class AddCoditionToUserGames < ActiveRecord::Migration
  def change
    add_column :user_games, :condition, :string
  end
end
