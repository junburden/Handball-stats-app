json.array!(@games) do |game|
  json.extract! game, :id, :home_id, :away_id, :date
  json.url game_url(game, format: :json)
end
