# frozen_string_literal: true

class Goal < ApplicationRecord
  has_many :progress_entries, dependent: :destroy


  def last_progress_entries
    entries = progress_entries.where(entry_date: 6.days.ago..0.days.ago).order(entry_date: :desc)
    entries_hash = {}
    entries.each{|entry| entries_hash[entry.entry_date.to_s] = entry.amount }

    entries_hash
  end
end
