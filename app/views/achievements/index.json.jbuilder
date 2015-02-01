json.array!(@achievements) do |achievement|
  json.extract! achievement, :id, :name, :description, :status, :app_id, :created_by_id, :meta
  json.url achievement_url(achievement, format: :json)
end
