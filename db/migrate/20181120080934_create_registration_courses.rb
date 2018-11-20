class CreateRegistrationCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_courses do |t|
      t.string :grade
      t.references :user, foreign_key: true
      t.references :course_offering, foreign_key: true

      t.timestamps
    end
  end
end
