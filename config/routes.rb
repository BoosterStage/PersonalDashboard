# frozen_string_literal: true

Rails.application.routes.draw do
  resources :goals do
    resources :progress_entries
  end

  root to: 'goals#index'
end
