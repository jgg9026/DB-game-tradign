class AddUser2IdToExchanges < ActiveRecord::Migration
  def change
    add_column :exchanges, :user2_id, :integer
  end
end
