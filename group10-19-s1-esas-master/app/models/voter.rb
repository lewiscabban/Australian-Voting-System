class Voter < ApplicationRecord
    has_many :votes
    def vote(ids)
        puts ids
        if Vote.where(:belongs_to => self.id).count == 0 then
            Vote.create!(:preferences => ids, :belongs_to => self.id)
        else
            puts "Voted already"
            v = Vote.where(:belongs_to => self.id)
            puts "Preferences: " + v[0].preferences
        end
    end
end
