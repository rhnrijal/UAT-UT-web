class RegistrationCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course_offering
  #has_many :users
  #has_many :courses
end
