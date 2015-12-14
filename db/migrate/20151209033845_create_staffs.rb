class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :name_kana
      t.string :sex
      t.date :birth
      t.integer :age
      t.string :postal_code
      t.text :address
      t.string :phone_num
      t.string :home_num
      t.string :mail
      t.string :role
      t.integer :status

      t.timestamps null: false
    end
  end
end
