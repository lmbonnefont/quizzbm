Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :questions, only: [ :new, :create, :index]
  resources :employees, only: [:new, :create, :index]
  resources :quizzs, only: [:new, :create, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
