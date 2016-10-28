json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :store_id, :sum, :annotate
  json.url order_url(order, format: :json)
end
