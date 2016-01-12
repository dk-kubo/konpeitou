class AddCaremanagerIdToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :caremanager_id, :integer
  end
end
