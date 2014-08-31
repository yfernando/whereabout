Rails.application.routes.draw do
  root 'search#index'
  get '/search', to: 'search#index', as: 'search'
  devise_for :users # routes are generated by the device gem
  resources :categories
  resources :pois
end
