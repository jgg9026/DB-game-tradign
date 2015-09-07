class CreateExchangeRecords < ActiveRecord::Migration
  def change
    create_table :exchange_records do |t|
      t.references :user_game, index: true, foreign_key: true
      t.references :exchange, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
