Given("I am a student") do
  @user = FactoryBot.create :student
end

Given("there is a course") do
  @course = FactoryBot.create :course
end

Given("there is a course offering") do
  @course_offering = FactoryBot.create :course_offering
end

Given("I am signed in") do
  visit '/users/sign_in'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Log in'
end

When("I visit the course offering page") do
visit '/registration_courses'
end

Then("I should see a link for registration") do
  expect(page).to have_link('New Registration Course')
end

When("I click the link for registration") do
  find_link('New Registration Course').click
end

Then("I should see the registration page") do
  visit '/registration_courses/new'
end

Then("I should see a form to register") do
  expect(page).to have_selector('form')
end

When("I submit the form") do
  #save_and_open_page
  @course = FactoryBot.build :course
  @course_offering = FactoryBot.build :course_offering
  @register = FactoryBot.build :register

  fill_in 'Grade', with: @register.grade
  fill_in 'User', with: @register.user_id
  fill_in 'Course offering', with: @course_offering.course_id
  click_button 'Create Registration course'
end

Then("I should see that i am registered") do
  visit '/registration_courses'
end