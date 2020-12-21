Rails.application.routes.draw do
  get 'responses/new'
  get 'arts/show'
  get 'series/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "series#index"
  resources :series
  resources :arts
  resources :responses
  resources :users_series
  post "users_series/:id/" => "users_series#create"
end
