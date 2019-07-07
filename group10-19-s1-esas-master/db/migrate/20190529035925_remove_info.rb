class RemoveInfo < ActiveRecord::Migration[5.0]
  def change
    remove_column :canidates, :DOB
    remove_column :canidates, :state 
    remove_column :canidates, :votes
    remove_column :canidates, :destription
    remove_column :parties, :destription
    remove_column :parties, :votes
  end
end
