Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get '/design', to: "pages#design"
  get '/dashboard', to: "pages#dashboard"

  resources :notions

  resources :lessons do
    member do
      post 'changestatus'
    end
  end

  resources :reviews, only: [:index, :new, :create, :delete ]

  # namespace :teacher do
  #   get 'dashboard', to: 'dashboard#dashboard'
  # end

  # namespace :student do
  #   get 'dashboard', to: 'dashboard#dashboard'
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
