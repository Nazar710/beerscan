Rails.application.routes.draw do
  recources :beers, only:[:index, :show]
  get 'beers/search', to: 'beers#search', as: :beer_search
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
