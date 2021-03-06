Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :computers do
    resources :bookings, only: %i[new index create]
  end
  resources :users, only: %i[show]
  # delete '/computers/:id', to: 'computers#destroy', as: 'delete'
  # resources :bookings, only: %i[index create]
end
