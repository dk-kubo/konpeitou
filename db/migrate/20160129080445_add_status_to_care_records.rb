class AddStatusToCareRecords < ActiveRecord::Migration
  def change
    add_column :care_records, :status, :integer
  end
end
