json.array!(@deals) do |deal|
  json.extract! deal, :id, :name, :category, :description, :image_url, :price, :value, :address, :latitude, :longitude, :status, :terms
  json.url deal_url(deal, format: :json)
end
