class Addanddelpartyattr < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidates, :party
    add_column :candidates, :party_id, :integer
  end
end
