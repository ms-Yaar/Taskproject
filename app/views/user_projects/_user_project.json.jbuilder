json.extract! user_project, :id, :user_id, :project_id, :role, :created_at, :updated_at
json.url user_project_url(user_project, format: :json)
