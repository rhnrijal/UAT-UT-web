FactoryBot.define do

  factory :role, class:Role do
    name "Student"
  end

  factory :student, class: User do
    email "joe_teacher@ait.asia"
    password "password"
    password_confirmation "password"
    role_id FactoryBot.create :role
  end

  factory :course, class: Course do
    code "At70.01"
    title "DMM"
  end

  factory :course_offering, class: CourseOffering do
    year 2018
    @x=FactoryBot.create :course
    course_id @x.id
  end


  factory :register, class: RegistrationCourse do
    #this fields are viewed from schema - registration_courses
    grade {'A'}
    user_id {1}
    course_offering_id {1}
  end

end