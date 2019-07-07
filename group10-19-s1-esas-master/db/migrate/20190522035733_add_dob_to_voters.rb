class AddDobToVoters < ActiveRecord::Migration[5.0]
  def change
    add_column :voters, :dob, :datetime
  end
end
