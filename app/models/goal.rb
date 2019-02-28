# frozen_string_literal: true

class Goal < ApplicationRecord
  validates :name, :benchmark, presence: true
  has_many :goal_progresses
end
