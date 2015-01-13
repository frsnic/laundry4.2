json.array!(@cloths) do |cloth|
  json.extract! cloth, :id, :store_id, :name, :unit, :code, :price_dry, :price_wash, :price_iron, :price_else, :day_dry, :day_wash, :day_iron, :day_else
  json.url cloth_url(cloth, format: :json)
end
