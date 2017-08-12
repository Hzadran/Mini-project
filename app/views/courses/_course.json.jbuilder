json.extract! course, :id, :Course_Name, :Course_Duration, :created_at, :updated_at
json.url course_url(course, format: :json)