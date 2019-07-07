class AddVoteToVoter < ActiveRecord::Migration[5.0]
  def change
    add_column :voters, :vote, :text, default: [].to_yaml
  end
end
