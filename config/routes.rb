Tomatobase::Application.routes.draw do
  resources :in_theaters, only: [:index]
  resources :search, only: [:index]
  resources :users, except: [:index] do
    resources :movies, only: [:create, :index, :show]
  end
  resource :session, only: [:new, :create, :destroy]


end
