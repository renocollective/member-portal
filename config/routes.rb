# frozen_string_literal: true

Rails.application.routes.draw do
  # root 'home#index'

  namespace :admin do
    resources :members
    root to: 'members#index'

    resources :categories
    root to: 'categories#index'

    resources :posts
    root to: 'posts#index'
  end

  devise_for :members

  resources :members
  root to: 'home#index'

  resources :posts do
    resources :comments
    root to: 'posts#index'
  end

  resources :categories
  root to: 'categories#index'
end
