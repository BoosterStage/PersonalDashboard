# frozen_string_literal: true

class Goal < ApplicationRecord
  has_many :progresses

  validates :benchmark, numericality: true
end
