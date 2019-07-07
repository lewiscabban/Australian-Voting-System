class AddVotesToCanidates < ActiveRecord::Migration[5.0]
  def change
    add_column :canidates, :votes, :integer
  end
end
