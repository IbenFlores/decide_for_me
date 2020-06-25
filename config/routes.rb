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
end
