Rails.application.routes.draw do
  resources :beers, only:[:index, :show]
  get 'beers/search', to: 'beers#search', as: :beer_search
  root to: 'pages#home'
  get 'design', to: 'pages#design', as: :design
  get 'loading', to: 'pages#loading', as: :loading
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
