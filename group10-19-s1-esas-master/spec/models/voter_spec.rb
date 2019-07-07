require 'rails_helper'

RSpec.describe Voter, type: :model do
  it "Allows submitting a vote" do
    count = Vote.all.count
    voter = Voter.create!()
    voter.vote([1,2,3,4,5,6])
    expect(Vote.all.count).to eq count+1
  end
  it "Prevents duplicate vote submissions" do
    voter = Voter.create!()
    count = Vote.all.count + 1
    voter.vote([1,2,3,4,5,6])
    voter.vote([1,2,3,4,5,6,7,8,9,10,11,12])
    expect(Vote.all.count).to eq count
  end
end
