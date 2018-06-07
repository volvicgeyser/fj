json.extract! favorite, :id, :job_id, :user_id, :comment, :created_at, :updated_at
json.url favorite_url(favorite, format: :json)