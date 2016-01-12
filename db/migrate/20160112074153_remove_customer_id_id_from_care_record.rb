class RemoveCustomerIdIdFromCareRecord < ActiveRecord::Migration
  def change
    remove_column :care_records, :customer_id_id, :integer
  end
end
