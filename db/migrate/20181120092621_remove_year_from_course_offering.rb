class RemoveYearFromCourseOffering < ActiveRecord::Migration[5.2]
  def change
    remove_column :course_offerings, :year, :date
  end
end
