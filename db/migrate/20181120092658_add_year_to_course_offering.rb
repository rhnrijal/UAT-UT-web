class AddYearToCourseOffering < ActiveRecord::Migration[5.2]
  def change
    add_column :course_offerings, :year, :integer
  end
end
