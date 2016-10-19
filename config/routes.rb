Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'high_voltage/pages#show', id: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tickets
  resources :flights
  resources :seats
end
