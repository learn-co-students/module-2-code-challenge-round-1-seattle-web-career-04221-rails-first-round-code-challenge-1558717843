Rails.application.routes.draw do
  resources :powers, only: [:index, :new, :edit, :show, :update, :create]
  resources :heroines, only: [:index, :new, :edit, :show, :update, :create]

end
