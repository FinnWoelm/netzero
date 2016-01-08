json.array!(@activity_categories) do |activity_category|
  json.extract! activity_category, :id, :title, :image
  json.url activity_category_url(activity_category, format: :json)
end
