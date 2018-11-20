class CourseOffering < ApplicationRecord
  belongs_to :course

  has_many :registration_courses, dependent: :destroy
  #validates_presence_of :year
end
