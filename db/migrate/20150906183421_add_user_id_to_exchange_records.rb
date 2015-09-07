class AddUserIdToExchangeRecords < ActiveRecord::Migration
  def change
    add_column :exchange_records, :user_id, :integer
  end
end
