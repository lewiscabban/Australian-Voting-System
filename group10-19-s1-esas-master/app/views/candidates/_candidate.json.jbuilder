json.extract! candidate, :id, :name, :party, :rank, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
