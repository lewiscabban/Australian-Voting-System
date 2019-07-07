json.extract! voter, :id, :name, :date_of_birth, :state, :voted, :created_at, :updated_at
json.url voter_url(voter, format: :json)
