class AddCustomerIdToCusFamily < ActiveRecord::Migration
  def change
    add_column :cus_families, :customer_id, :integer
  end
end
