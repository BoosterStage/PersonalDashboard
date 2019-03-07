# frozen_string_literal: true

require 'test_helper'

class GoalProgressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_progress = goal_progresses(:one)
  end

  test 'should get index' do
    get goal_progresses_url
    assert_response :success
  end

  test 'should get new' do
    get new_goal_progress_url
    assert_response :success
  end

  test 'should create goal progress' do
    assert_difference('GoalProgress.count') do
      post goal_progresses_url, params: { goal_progress: { goal_id: @goal_progress.goal_id, achieve_at: @goal_progress.achieve_at, achieve: @goal_progress.achieve } }
    end

    assert_redirected_to goal_progress_url(GoalProgress.last)
  end

  test 'should show goal progress' do
    get goal_progress_url(@goal_progress)
    assert_response :success
  end

  test 'should get edit' do
    get edit_goal_progress_url(@goal_progress)
    assert_response :success
  end

  test 'should update goal progress' do
    patch goal_progress_url(@goal_progress), params: { goal_progress: { goal_id: @goal_progress.goal_id, achieve_at: @goal_progress.achieve_at, achieve: @goal_progress.achieve } }
    assert_redirected_to goal_progress_url(@goal_progress)
  end

  test 'should destroy goal progress' do
    assert_difference('GoalProgress.count', -1) do
      delete goal_progress_url(@goal_progress)
    end

    assert_redirected_to goal_progresses_url
  end
end
