class CreateParties < ActiveRecord::Migration[5.0]
  def change
    create_table :parties do |t|
      t.string :name
      t.text :destription
      t.integer :votes

      t.timestamps
    end
  end
end
