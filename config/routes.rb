Tomatobase::Application.routes.draw do
  resources :search, only: [:index]
  resources :users, except: [:index]
  resources :movies, only: [:create, :index, :show]
  resource :session, only: [:new, :create, :destroy]
end
