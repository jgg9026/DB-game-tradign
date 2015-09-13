class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      #t.string :comment
      
      t.timestamps null: false
    end
  end
end
