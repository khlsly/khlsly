json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :address, :phone, :password, :isAdmin
  json.url user_url(user, format: :json)
end
