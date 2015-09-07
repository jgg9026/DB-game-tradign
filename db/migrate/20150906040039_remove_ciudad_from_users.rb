class RemoveCiudadFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :ciudad, :string
  end
end
