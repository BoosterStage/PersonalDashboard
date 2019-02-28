# frozen_string_literal: true

Rails.application.routes.draw do
  resources :goals
  resources :goal_progresses
  root to: 'goals#index'
end
