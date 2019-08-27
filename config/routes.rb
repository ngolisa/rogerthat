Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/design', to: "pages#design"
  resources :notions
  resources :lessons do
    member do
      post 'changestatus'
    end
  end

  resources :reviews, only: [ :new, :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
