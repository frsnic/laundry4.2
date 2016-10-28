json.array!(@stores) do |store|
  json.extract! store, :id, :name, :phone, :address, :start_time, :end_time, :annotate
  json.url store_url(store, format: :json)
end
