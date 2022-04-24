class CreateEnrollments < ActiveRecord::Migration[6.1]
  def change
    create_table :enrollments do |t|
      t.references :school_class
      t.references :student

      t.timestamps
    end
  end
end
