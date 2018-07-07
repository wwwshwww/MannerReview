Rails.application.routes.draw do
  get 'reviews/new'

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/show_reviews', to: 'static_pages#show'
  get '/review', to: 'reviews#new'
  post '/review', to: 'reviews#create'
  resources :reviews
end
