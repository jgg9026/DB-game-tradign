class AddUser1IdToExchanges < ActiveRecord::Migration
  def change
    add_column :exchanges, :user1_id, :integer#, index:true
  end
end
