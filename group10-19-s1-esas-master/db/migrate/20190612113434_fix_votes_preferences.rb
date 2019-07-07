class FixVotesPreferences < ActiveRecord::Migration[5.0]
  def change
    remove_column :votes, :preferences
    add_column :votes, :preferences, :text, default: [].to_yaml
  end
end
