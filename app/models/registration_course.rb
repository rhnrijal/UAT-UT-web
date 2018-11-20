class RegistrationCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course_offering
  validates_presence_of :grade

  belongs_to :course
  belongs_to :course_offering
end
