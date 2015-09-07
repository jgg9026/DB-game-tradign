class AddRequestStateToExchanges < ActiveRecord::Migration
  def change
    add_column :exchanges, :request_state, :string
  end
end
