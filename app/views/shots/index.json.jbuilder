json.array!(@shots) do |shot|
  json.extract! shot, :id, :goal, :x_position, :y_position, :shooter_x_pos, :shooter_z_pos, :game_id, :team_id, :defending_team_id, :shooter_id, :goalie_id
  json.url shot_url(shot, format: :json)
end
