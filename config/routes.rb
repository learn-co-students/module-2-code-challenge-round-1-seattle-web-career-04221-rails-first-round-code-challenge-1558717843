Rails.application.routes.draw do
  get '/search', to: 'heroines#search'
  resources :powers
  resources :heroines
end
