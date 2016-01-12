json.array!(@care_records) do |care_record|
  json.extract! care_record, :id, :day, :arrive_time, :leave_time, :blood_pressure, :pulse, :temperature, :medichine, :treatment, :dietary_intake, :water_intake, :gait_training, :distance, :toilet, :stretch, :oral_stretch, :recreation, :form, :act, :detachable, :training, :walking, :rec_name, :bathing, :meal_size, :contact, :opinion, :staff_id_id, :customer_id_id
  json.url care_record_url(care_record, format: :json)
end
