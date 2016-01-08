json.array!(@activities) do |activity|
  json.extract! activity, :id, :title, :summary, :description, :image
  json.url activity_url(activity, format: :json)
end
