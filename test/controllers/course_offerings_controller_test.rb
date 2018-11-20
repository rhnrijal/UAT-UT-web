require 'test_helper'

class CourseOfferingsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @course_offering = course_offerings(:one)
  end

  test "should get index" do
    get course_offerings_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_course_offering_url
    assert_response :success
  end

  test "should create course_offering" do
    assert_difference('CourseOffering.count',1) do
      post course_offerings_url, params: { course_offering: { course_id: 1, year: 2018 } }
    end

    assert_redirected_to course_offering_url(CourseOffering.last)
  end



  test "should show course_offering" do
    get course_offering_url(@course_offering)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_course_offering_url(@course_offering)
    assert_response :success
  end

  test "should update course_offering" do
    sign_in users(:one)
    patch course_offering_url(@course_offering), params: { course_offering: { course_id: 1, year: 2018 } }
    assert_redirected_to course_offering_url(@course_offering)
  end



  test "should destroy course_offering" do
    assert_difference('CourseOffering.count', -1) do
      delete course_offering_url(@course_offering)
    end

    assert_redirected_to course_offerings_url
  end
end
