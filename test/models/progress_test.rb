require 'test_helper'

class ProgressTest < ActiveSupport::TestCase
  test 'invalid without points' do
    goal = goals(:one)
    progress = Progress.new(goal: goal, points: nil, entry_date: Date.today)
    refute progress.valid?
  end

  test 'invalid without entry date' do
    goal = goals(:one)
    progress = Progress.new(goal: goal, points: 4, entry_date: nil)
    refute progress.valid?
  end

  test 'valid with points and entry_date' do
    goal = goals(:one)
    progress = Progress.new(goal: goal, points: 4, entry_date: Date.today)
    assert progress.valid?
  end
end
