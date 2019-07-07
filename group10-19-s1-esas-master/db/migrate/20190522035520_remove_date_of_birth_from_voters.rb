class RemoveDateOfBirthFromVoters < ActiveRecord::Migration[5.0]
  def change
    remove_column :voters, :date_of_birth, :string
  end
end
