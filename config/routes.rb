# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'states#index'
  get '/cities', to: 'cities#index', as: :cities
end
