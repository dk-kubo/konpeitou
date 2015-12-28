json.array!(@cus_families) do |cus_family|
  json.extract! cus_family, :id, :name, :name_kana, :relation, :living, :address, :contact, :customer_id
  json.url cus_family_url(cus_family, format: :json)
end
