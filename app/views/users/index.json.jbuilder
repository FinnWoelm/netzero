json.array!(@users) do |user|
  json.extract! user, :id, :email, :code
  json.url user_url(user, format: :json)
end
