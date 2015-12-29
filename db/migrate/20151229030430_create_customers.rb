class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :insure_num
      t.string :name
      t.string :name_kana
      t.string :sex
      t.date :birth
      t.string :postal_code
      t.text :address
      t.string :home_num
      t.string :phone_num
      t.string :fax
      t.string :mail
      t.date :reception_day
      t.text :history_of_consul
      t.text :demand
      t.string :household
      t.text :family_situation

      t.timestamps null: false
    end
  end
end
