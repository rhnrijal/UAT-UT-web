class Course < ApplicationRecord
has_many :course_offerings, dependent: :destroy
#validates_presence_of :code
end
