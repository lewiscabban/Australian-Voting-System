class AddPreferencesToVoter < ActiveRecord::Migration[5.0]
  def change
    add_column :voters, :preferences, :text, default: [].to_yaml
  end
end
