Rails.application.routes.draw do
  resources :powers
  resources :heroines
  get '/search', action: :search, controller: 'heroines'
end
