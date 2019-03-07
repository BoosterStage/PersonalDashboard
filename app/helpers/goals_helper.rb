# frozen_string_literal: true

module GoalsHelper
  def display_progress(progress_entries_hash, date)
    amount = progress_entries_hash[date.to_date.to_s]
    amount.blank? ? "-" : amount
  end
end
