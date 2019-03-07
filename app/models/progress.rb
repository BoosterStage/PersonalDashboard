class Progress < ApplicationRecord
  belongs_to :goal
  validates :points, numericality: true
  validates :entry_date, presence: true
end
