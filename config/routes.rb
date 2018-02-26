# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :members

    root to: 'members#index'
  end

  devise_for :members

  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'members#index'
end
