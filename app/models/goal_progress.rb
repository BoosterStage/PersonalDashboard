# frozen_string_literal: true

class GoalProgress < ApplicationRecord
  validates :achieve, :achieve_at, presence: true
  belongs_to :goal
end
