require 'test_helper'

class MembershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get memberships_new_url
    assert_response :success
  end

  test "should get edit" do
    get memberships_edit_url
    assert_response :success
  end

  test "should get create" do
    get memberships_create_url
    assert_response :success
  end

  test "should get update" do
    get memberships_update_url
    assert_response :success
  end

  test "should get destroy" do
    get memberships_destroy_url
    assert_response :success
  end

end
