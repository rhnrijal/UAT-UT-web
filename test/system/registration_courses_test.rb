require "application_system_test_case"

class RegistrationCoursesTest < ApplicationSystemTestCase
  setup do
    @registration_course = registration_courses(:one)
  end

  test "visiting the index" do
    visit registration_courses_url
    assert_selector "h1", text: "Registration Courses"
  end

  test "creating a Registration course" do
    visit registration_courses_url
    click_on "New Registration Course"

    fill_in "Course Offering", with: @registration_course.course_offering_id
    fill_in "Grade", with: @registration_course.grade
    fill_in "User", with: @registration_course.user_id
    click_on "Create Registration course"

    assert_text "Registration course was successfully created"
    click_on "Back"
  end

  test "updating a Registration course" do
    visit registration_courses_url
    click_on "Edit", match: :first

    fill_in "Course Offering", with: @registration_course.course_offering_id
    fill_in "Grade", with: @registration_course.grade
    fill_in "User", with: @registration_course.user_id
    click_on "Update Registration course"

    assert_text "Registration course was successfully updated"
    click_on "Back"
  end

  test "destroying a Registration course" do
    visit registration_courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registration course was successfully destroyed"
  end
end
