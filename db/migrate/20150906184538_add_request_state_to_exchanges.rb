class AddRequestStateToExchanges < ActiveRecord::Migration
  def change
    add_column :exchanges, :request_status, :string
  end
end
