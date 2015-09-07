class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :maker
      t.string :launch_date

      t.timestamps null: false
    end
  end
end
