class CreateCareRecords < ActiveRecord::Migration
  def change
    create_table :care_records do |t|
      t.date :day
      t.time :arrive_time
      t.time :leave_time
      t.string :blood_pressure
      t.string :pulse
      t.decimal :temperature
      t.string :medichine
      t.string :treatment
      t.string :dietary_intake
      t.string :water_intake
      t.string :gait_training
      t.integer :distance
      t.string :toilet
      t.string :stretch
      t.string :oral_stretch
      t.string :recreation
      t.string :form
      t.string :act
      t.string :detachable
      t.string :training
      t.string :walking
      t.string :rec_name
      t.string :bathing
      t.integer :meal_size
      t.text :contact
      t.text :opinion
      t.references :staff_id, index: true, foreign_key: true
      t.references :customer_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
