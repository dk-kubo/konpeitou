class CreateCusFamilies < ActiveRecord::Migration
  def change
    create_table :cus_families do |t|
      t.string :name
      t.string :relation
      t.string :living
      t.text :address
      t.string :contact

      t.timestamps null: false
    end
  end
end
