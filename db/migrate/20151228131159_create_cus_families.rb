class CreateCusFamilies < ActiveRecord::Migration
  def change
    create_table :cus_families do |t|
      t.string :name
      t.string :name_kana
      t.string :relation
      t.string :living
      t.text :address
      t.string :contact
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
