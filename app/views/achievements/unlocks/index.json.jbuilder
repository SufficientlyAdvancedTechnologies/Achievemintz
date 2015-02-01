json.array!(@achievements_unlocks) do |achievements_unlock|
  json.extract! achievements_unlock, :id, :achievement_id, :player_id, :progression, :status, :meta
  json.url achievements_unlock_url(achievements_unlock, format: :json)
end
