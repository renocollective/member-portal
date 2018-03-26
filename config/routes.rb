# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :members
    root to: 'members#index'
  end

  devise_for :members

  resources :members
  root to: 'members#index'

  resources :posts do
    resources :comments
    root to: 'posts#index'
  end
end
