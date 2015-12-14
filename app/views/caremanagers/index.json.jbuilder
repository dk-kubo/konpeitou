json.array!(@caremanagers) do |caremanager|
  json.extract! caremanager, :id, :name, :name_kana, :sex, :birth, :age, :postal_code, :address, :phone_num, :mail, :company, :status
  json.url caremanager_url(caremanager, format: :json)
end
