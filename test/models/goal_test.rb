# frozen_string_literal: true

require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  test "valid goal" do
    goal = Goal.new(name: "20 Push-ups per day", benchmark: 20)
    assert goal.valid?
  end

  test "invalid without name" do
    goal = Goal.new(benchmark: 20)
    refute goal.valid?
    assert_not_nil goal.errors[:name]
  end

  test "invalid without benchmark" do
    goal = Goal.new(name: "20 Push-ups per day")
    refute goal.valid?
    assert_not_nil goal.errors[:benchmark]
  end
end
