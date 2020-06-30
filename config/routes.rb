Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, except: [:index, :show]
  resources :dilemmas do
    resources :options, only: [:new, :create]
    resources :replies, only: [:new, :create]
  end
  resources :replies, only: :destroy
  get '/options/:id/upvotes', to: 'options#upvotes', as: :upvotes
  get '/replies/:id/mark', to: 'replies#mark', as: :mark
  get '/users/profile', to: 'users#profile', as: :profile
  get '/about', to: 'pages#about', as: :about
end
