require 'test_helper'

class SlackWorkspacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slack_workspace = slack_workspaces(:one)
  end

  test "should get index" do
    get slack_workspaces_url
    assert_response :success
  end

  test "should get new" do
    get new_slack_workspace_url
    assert_response :success
  end

  test "should create slack_workspace" do
    assert_difference('SlackWorkspace.count') do
      post slack_workspaces_url, params: { slack_workspace: {  } }
    end

    assert_redirected_to slack_workspace_url(SlackWorkspace.last)
  end

  test "should show slack_workspace" do
    get slack_workspace_url(@slack_workspace)
    assert_response :success
  end

  test "should get edit" do
    get edit_slack_workspace_url(@slack_workspace)
    assert_response :success
  end

  test "should update slack_workspace" do
    patch slack_workspace_url(@slack_workspace), params: { slack_workspace: {  } }
    assert_redirected_to slack_workspace_url(@slack_workspace)
  end

  test "should destroy slack_workspace" do
    assert_difference('SlackWorkspace.count', -1) do
      delete slack_workspace_url(@slack_workspace)
    end

    assert_redirected_to slack_workspaces_url
  end
end
