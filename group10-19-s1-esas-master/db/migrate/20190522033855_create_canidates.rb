class CreateCanidates < ActiveRecord::Migration[5.0]
  def change
    create_table :canidates do |t|
      t.string :name
      t.datetime :DOB
      t.string :state
      t.text :destription
      t.string :party
      t.string :rank

      t.timestamps
    end
  end
end
