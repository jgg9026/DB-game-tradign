class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :platform
      t.string :console

      t.timestamps null: false
    end
  end
end
