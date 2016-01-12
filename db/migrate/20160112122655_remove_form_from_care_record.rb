class RemoveFormFromCareRecord < ActiveRecord::Migration
  def change
    remove_column :care_records, :form, :string
  end
end
