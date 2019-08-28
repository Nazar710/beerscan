Rails.application.routes.draw do
  resources :beers do
    post :get_barcode, on: :collection
  end

  resources :scans, only: [:create]

  get 'beers/search', to: 'beers#search', as: :beer_search
  root to: 'pages#loading'
  get 'barcode-scanner', to: 'pages#barcode'
  get 'design', to: 'pages#design', as: :design
  get 'show', to: 'pages#show', as: :show
  get 'home', to: 'pages#home', as: :home

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
