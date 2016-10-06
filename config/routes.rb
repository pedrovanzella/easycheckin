Rails.application.routes.draw do
  devise_for :users

  root to: 'high_voltage/pages#show', id: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
