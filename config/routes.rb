Rails.application.routes.draw do
  resources :beers do
        post :get_barcode, on: :collection
      end
  get 'beers/search', to: 'beers#search', as: :beer_search
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
