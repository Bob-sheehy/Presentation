json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :name, :email, :agree
  json.url newsletter_url(newsletter, format: :json)
end
