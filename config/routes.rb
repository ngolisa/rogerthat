Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/design', to: "pages#design"
  resources :notions
  resources :lessons
  resources :reviews, only: [:index, :new, :create, :delete ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
