require 'test_helper'

class RegistrationCoursesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @registration_course = registration_courses(:one)
  end

  test "should get index" do
    get registration_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_registration_course_url
    assert_response :success
  end

  test "should create registration_course" do
    sign_in users(:one)
    assert_difference('RegistrationCourse.count') do
      post registration_courses_url, params: { registration_course: { course_offering_id: 3, grade: 'A+', user_id: 4 } }
    end

    assert_redirected_to registration_course_url(RegistrationCourse.last)
  end



  test "should show registration_course" do
    get registration_course_url(@registration_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_registration_course_url(@registration_course)
    assert_response :success
  end

  test "should update registration_course" do
    patch registration_course_url(@registration_course), params: { registration_course: { course_offering_id: 1, grade: 'new A', user_id: 1 } }
    #assert_redirected_to registration_course_url(@registration_course)
    assert_response :success
  end

  test "should not update registration_course if grade is not presence" do
    patch registration_course_url(@registration_course), params: { registration_course: { course_offering_id: 1, grade: '', user_id: 1 } }
    #assert_redirected_to registration_course_url(@registration_course)
    assert_response :success
  end


  test "should destroy registration_course" do
    assert_difference('RegistrationCourse.count', -1) do
      delete registration_course_url(@registration_course)
    end

    assert_redirected_to registration_courses_url
  end
end
