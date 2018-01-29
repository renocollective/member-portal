# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :members, controllers: { confirmations: 'confirmations' }

  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'members#index'
end
