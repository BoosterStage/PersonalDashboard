class ProgressQuery

  attr_accessor :goal

  def initialize(goal)
    raise ArgumentError, 'Goal parameter is invalid' unless goal.is_a? Goal

    @goal = goal
  end

  ##
  # Return progresses in the past 7 days
  #
  # @author Ming
  def week_entries
    entries = goal.progresses.where('entry_date > ?', Date.today - 1.week)
    Array.new(7) do |i|
      entry = entries.find { |e| e[:entry_date] == Date.today - i.days }
      entry&.points
    end
  end

  ##
  # Return weekday string array for the past 7 days
  #
  # @author Ming
  def self.weekdays
    Array.new(7) do |i|
      (Date.today - i.days).strftime('%A').first(3)
    end
  end

end
