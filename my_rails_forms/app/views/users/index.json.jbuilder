json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :street, :suburb, :city, :notes
  json.url user_url(user, format: :json)
end
