# frozen_string_literal: true

# DashboardController
class DashboardController < ApplicationController

  def index
    @goals = Goal.includes(:goal_progresses).order("goal_progresses.updated_at desc")
  end

end
