class RemoveStaffIdIdFromCareRecord < ActiveRecord::Migration
  def change
    remove_column :care_records, :staff_id_id, :integer
  end
end
