require 'test_helper'

class ShotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shot = shots(:one)
  end

  test "should get index" do
    get shots_url
    assert_response :success
  end

  test "should get new" do
    get new_shot_url
    assert_response :success
  end

  test "should create shot" do
    assert_difference('Shot.count') do
      post shots_url, params: { shot: { game_id: @shot.game_id, goal: @shot.goal, player_id: @shot.player_id, team_id: @shot.team_id, x_position: @shot.x_position, y_position: @shot.y_position } }
    end

    assert_redirected_to shot_path(Shot.last)
  end

  test "should show shot" do
    get shot_url(@shot)
    assert_response :success
  end

  test "should get edit" do
    get edit_shot_url(@shot)
    assert_response :success
  end

  test "should update shot" do
    patch shot_url(@shot), params: { shot: { game_id: @shot.game_id, goal: @shot.goal, player_id: @shot.player_id, team_id: @shot.team_id, x_position: @shot.x_position, y_position: @shot.y_position } }
    assert_redirected_to shot_path(@shot)
  end

  test "should destroy shot" do
    assert_difference('Shot.count', -1) do
      delete shot_url(@shot)
    end

    assert_redirected_to shots_path
  end
end
