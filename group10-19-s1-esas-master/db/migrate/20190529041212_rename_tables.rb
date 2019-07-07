class RenameTables < ActiveRecord::Migration[5.0]
  def change
    rename_table :canidates, :candidates
  end
end
