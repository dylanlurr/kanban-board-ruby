json.extract! production_task, :id, :description, :completed, :video_project_id, :created_at, :updated_at
json.url production_task_url(production_task, format: :json)
