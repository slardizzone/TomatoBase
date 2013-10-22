Tomatobase::Application.routes.draw do
  resources :users, except: [:index]
  resources :movies, only: [:index, :show]
  resource :session, only: [:new, :create, :destroy]
end
