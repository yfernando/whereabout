Rails.application.routes.draw do
  root 'search#index'
  get '/search', to: 'search#index', as: 'search'
  post '/search', to: 'search#search'
  devise_for :users # routes are generated by the device gem
  
  resources :categories
  resources :pois
  resources :invitations,        only: [:index, :new, :create]
  get '/invitations/:id/accept', to: 'invitations#accept',        as: :accept_invitation
  get '/invitations/:id/reject', to: 'invitations#reject',        as: :reject_invitation
  get '/friends',                to: 'invitations#friends',       as: :friends
  get '/friends/:id/delete',     to: 'invitations#remove_friend', as: :remove_friend

end
