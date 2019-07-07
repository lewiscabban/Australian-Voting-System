class CreateVoters < ActiveRecord::Migration[5.0]
  def change
    create_table :voters do |t|
      t.string :name
      t.string :date_of_birth
      t.string :state
      t.boolean :voted

      t.timestamps
    end
  end
end
