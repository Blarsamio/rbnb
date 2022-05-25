Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'home', to: 'pages#home'
  resources :developers, only: %i[create index new show] do
    resources :bookings, only: :create
  end
  resources :bookings, only: %i[index destroy]
  get 'bookings/:id/accept', to: 'bookings#accept', as: 'accept'
  delete 'bookings/:id/reject', to: 'bookings#reject', as: 'reject'
  resources :contacts, only: %i[create new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
