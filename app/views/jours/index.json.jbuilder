json.array!(@jours) do |jour|
  json.extract! jour, :id
  json.url jour_url(jour, format: :json)
end
