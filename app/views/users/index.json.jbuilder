json.array!(@users) do |user|
  json.extract! user, :id, :username, :birthdate, :password, :firstname, :lastname, :email
  json.url user_url(user, format: :json)
end
