Rails.application.routes.draw do
  get '/teachers', to: "users#teachers"
  get '/teachers/:id', to: "users#teacher", as: 'teacher'
  # resources :users, only: :index do
  #   collection do
  #     get 'teachers'
  #   end
  # end
  devise_for :users

  root to: 'pages#home'

  get '/design', to: "pages#design"
  get '/dashboard', to: "pages#dashboard"

  resources :notions

  resources :lessons do
    resources :reviews, only: [:index, :new, :create, :delete ]
    member do
      post 'changestatus'
    end
  end


  # namespace :teacher do
  #   get 'dashboard', to: 'dashboard#dashboard'
  # end

  # namespace :student do
  #   get 'dashboard', to: 'dashboard#dashboard'
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
