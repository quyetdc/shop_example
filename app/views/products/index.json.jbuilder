json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :images, :introduce, :popular, :new_arrivals, :best_sellers, :category_id
  json.url product_url(product, format: :json)
end
