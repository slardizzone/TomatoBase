Tomatobase::Application.routes.draw do
  root 'sessions#new'
  resources :in_theaters, only: [:index]
  resources :new_releases, only: [:index]
  resources :search, only: [:index]
  resources :users, except: [:index] do
    resources :movies, only: [:create, :index, :show]
  end
  resource :session, only: [:new, :create, :destroy]


end
