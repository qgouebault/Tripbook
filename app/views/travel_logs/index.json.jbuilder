json.array!(@travel_logs) do |travel_log|
  json.extract! travel_log, :id, :title, :description :user_id
  json.url travel_log_url(travel_log, format: :json)
end
