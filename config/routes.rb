# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'

  namespace :admin do
    resources :members
    root to: 'members#index'
  end

  authenticated :member do
    devise_for :members
    resources :members
    root to: 'home#index'
  end

  authenticated :member do
    resources :posts do
      resources :comments
      root to: 'posts#index'
    end
  end

  root "home#index"

end
