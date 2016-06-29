json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :password_digest, :current_city, :origin_city, :languages, :age
  json.url user_url(user, format: :json)
end
