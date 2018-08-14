# frozen_string_literal: true

Rails.application.routes.draw do
  resources :goals
  root to: 'goals#index'
end
