json.array!(@reduction_options) do |reduction_option|
  json.extract! reduction_option, :id, :title, :carbon_impact
  json.url reduction_option_url(reduction_option, format: :json)
end
