class Candidate < ApplicationRecord
    belongs_to :party, optional: true, dependent: :destroy
    
    validates :name, :rank, :presence => true
end
