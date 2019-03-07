# frozen_string_literal: true

json.extract! goal, :id, :name, :benchmark, :created_at, :updated_at
json.url goal_url(goal, format: :json)
