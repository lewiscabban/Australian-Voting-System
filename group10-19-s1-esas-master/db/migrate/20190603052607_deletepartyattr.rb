class Deletepartyattr < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidates, :party
  end
end
