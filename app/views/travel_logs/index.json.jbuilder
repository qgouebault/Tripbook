json.array!(@travel_logs) do |travel_log|
  json.extract! travel_log, :id, :title, :description
  json.url travel_log_url(travel_log, format: :json)
end
