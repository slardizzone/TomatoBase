Tomatobase::Application.routes.draw do
  resources :users, except: [:index]
  resources :movies, only: [:index, :show]
end
