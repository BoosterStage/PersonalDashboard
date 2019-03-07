# frozen_string_literal: true

Rails.application.routes.draw do
  resources :progresses
  resources :goals
  root to: 'goals#index'
end
