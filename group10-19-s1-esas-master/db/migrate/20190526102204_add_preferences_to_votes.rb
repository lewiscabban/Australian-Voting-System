class AddPreferencesToVotes < ActiveRecord::Migration[5.0]
  def change
    add_column :votes, :preferences, :integer, array: true, default: []
  end
end
