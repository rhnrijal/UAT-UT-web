json.extract! registration_course, :id, :grade, :user_id, :course_offering_id, :created_at, :updated_at
json.url registration_course_url(registration_course, format: :json)
