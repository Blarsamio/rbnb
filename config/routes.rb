Rails.application.routes.draw do
  devise_for :users
  get "/home", to: 'pages#home'
  get "/contact", to: 'pages#contact'
  root to: 'pages#home'
  resources :developers, only: %i[create index new show] do
    resources :bookings, only: :create
  end
  resources :bookings, only: %i[index destroy]
  get 'bookings/:id/accept', to: 'bookings#accept', as: 'accept'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
