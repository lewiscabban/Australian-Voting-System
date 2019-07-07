class RemoveVoteFromVoter < ActiveRecord::Migration[5.0]
  def change
    remove_column :voters, :vote, :text
  end
end
