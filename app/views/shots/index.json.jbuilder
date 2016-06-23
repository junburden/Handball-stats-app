json.array!(@shots) do |shot|
  json.extract! shot, :id, :goal, :x_position, :y_position, :game_id, :team_id, :player_id
  json.url shot_url(shot, format: :json)
end
