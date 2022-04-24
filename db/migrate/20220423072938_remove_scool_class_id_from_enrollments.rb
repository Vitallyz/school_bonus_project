class RemoveScoolClassIdFromEnrollments < ActiveRecord::Migration[6.1]
  def change
    remove_column :enrollments, :scool_class_id, :integer
  end
end
