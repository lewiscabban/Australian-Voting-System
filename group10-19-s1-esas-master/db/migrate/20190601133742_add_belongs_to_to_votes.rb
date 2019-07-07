class AddBelongsToToVotes < ActiveRecord::Migration[5.0]
  def change
    add_column :votes, :belongs_to, :integer
  end
end
