require 'test_helper'

class ProgressQueryTest < ActiveSupport::TestCase
  test 'return weekday strings for the past 7 days' do
    described_class.weekdays.must_be_kind_of Array
    described_class.weekdays.length.must_equal 7
  end

  test 'return weekday progress entries' do
    # TODO: Should add later. Time ran out...
  end
end
