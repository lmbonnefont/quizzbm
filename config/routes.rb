Rails.application.routes.draw do
  devise_for :users
  root to: 'employees#index'

  resources :questions, only: [ :new, :create, :show, :index]
  post "questioncheck", to: "questions#check"
  get "employeehalloffame", to: "employees#fame"

  resources :employees, only: [:new, :create, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
