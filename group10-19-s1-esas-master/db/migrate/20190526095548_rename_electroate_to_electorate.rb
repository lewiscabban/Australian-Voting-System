class RenameElectroateToElectorate < ActiveRecord::Migration[5.0]
  def change
    def change
      rename_column :canidate, :electroate, :electorate
    end
  end
end
