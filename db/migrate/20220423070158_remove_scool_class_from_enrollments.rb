class RemoveScoolClassFromEnrollments < ActiveRecord::Migration[6.1]
  def change
    remove_column :enrollments, :scool_class_id
  end
end
