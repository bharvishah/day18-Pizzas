json.array!(@pizzas) do |pizza|
  json.extract! pizza, :id, :name, :ingredients
  json.url pizza_url(pizza, format: :json)
end
