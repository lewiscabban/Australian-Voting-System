class AddElectroateToCanidates < ActiveRecord::Migration[5.0]
  def change
    add_column :canidates, :electroate, :string
  end
end
