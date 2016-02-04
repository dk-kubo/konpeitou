class AddStaffIdToCareRecord < ActiveRecord::Migration
  def change
    add_column :care_records, :staff_id, :integer
  end
end
