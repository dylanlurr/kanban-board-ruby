json.extract! video_project, :id, :title, :status, :target_date, :category, :created_at, :updated_at
json.url video_project_url(video_project, format: :json)
