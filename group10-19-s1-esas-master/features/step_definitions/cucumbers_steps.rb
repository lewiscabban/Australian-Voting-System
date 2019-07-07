Given(/^the following voters exist:$/) do |table|
  table.hashes.each do |voter|
		Voter.create(voter)
	end
end

Given(/^the following candidates exist:$/) do |table|
  table.hashes.each do |candidate|
		Candidate.create(candidate)
	end
end

Given(/^the following partys exist:$/) do |table|
  table.hashes.each do |party|
		Party.create(party)
	end
end