# frozen_string_literal: true

class Goal < ApplicationRecord
  validates :name, :benchmark, presence: true
end
