json.array!(@achievements_badges) do |achievements_badge|
  json.extract! achievements_badge, :id, :achievements/unlock_id, :player_id, :multiplier, :status, :meta
  json.url achievements_badge_url(achievements_badge, format: :json)
end
