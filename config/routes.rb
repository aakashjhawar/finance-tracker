Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "user/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'my-portfolio', to: 'users#my_portfolio'
  get 'search-stocks', to: 'stocks#search'
  resources :user_stocks, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :friendships
  get 'my-friends', to: 'users#my_friends'
  get 'search_friends', to: 'users#search'
  post 'add_friend', to: 'users#add_friend'
end
