class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :rate
      t.belongs_to :exchange, index:true
      t.timestamps null: false
    end
  end
end
