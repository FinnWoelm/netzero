json.array!(@questions) do |question|
  json.extract! question, :id, :title, :question
  json.url question_url(question, format: :json)
end
