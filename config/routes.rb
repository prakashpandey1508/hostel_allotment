Rails.application.routes.draw do
  devise_for :students
  resources :students
  resources :wardens
  resources  :colleges
  resources  :hostels
  get "/auth/facebook/callback", to: "omniauth_callbacks#facebook"
  root 'colleges#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
