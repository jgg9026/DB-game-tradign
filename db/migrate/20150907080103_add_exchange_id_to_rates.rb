class AddExchangeIdToRates < ActiveRecord::Migration
  def change
    add_column :rates, :exchange_id, :integer
  end
end
