class RenameElec < ActiveRecord::Migration[5.0]
  def change
    rename_column :candidates, :electroate, :electorate
  end
end
