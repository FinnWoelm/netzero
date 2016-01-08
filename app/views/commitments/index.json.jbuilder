json.array!(@commitments) do |commitment|
  json.extract! commitment, :id, :user_id, :activity_id
  json.url commitment_url(commitment, format: :json)
end
