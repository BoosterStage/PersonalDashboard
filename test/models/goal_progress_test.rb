# frozen_string_literal: true

require 'test_helper'

class GoalProgressTest < ActiveSupport::TestCase

  setup do
    @goal_progress = goal_progresses(:one)
  end

  test "valid goal progress" do
    assert @goal_progress.valid?
  end

  test "invalid without goal" do
    @goal_progress.goal = nil
    refute @goal_progress.valid?
    assert_not_nil @goal_progress.errors[:goal_id]
  end

  test "invalid without achieve_at" do
    @goal_progress.achieve_at = nil
    refute @goal_progress.valid?
    assert_not_nil @goal_progress.errors[:achieve_at]
  end

  test "invalid without achieve" do
    @goal_progress.achieve = nil
    refute @goal_progress.valid?
    assert_not_nil @goal_progress.errors[:achieve]
  end
end
