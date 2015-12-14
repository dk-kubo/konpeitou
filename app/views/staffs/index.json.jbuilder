json.array!(@staffs) do |staff|
  json.extract! staff, :id, :name, :name_kana, :sex, :birth, :age, :photo, :postal_code, :address, :phone_num, :home_num, :mail, :role, :status
  json.url staff_url(staff, format: :json)
end
