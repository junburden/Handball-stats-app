json.array!(@games) do |game|
  json.extract! game, :id, :tournament_id, :home_id, :away_id, :date
  json.url game_url(game, format: :json)
end
