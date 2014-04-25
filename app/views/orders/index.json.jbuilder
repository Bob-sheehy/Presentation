json.array!(@orders) do |order|
  json.extract! order, :id, :first_name, :last_name, :age, :gender, :address, :latitude, :longitude, :email, :phone, :status, :term_and_condition, :pay_type
  json.url order_url(order, format: :json)
end
