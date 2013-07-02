Magpie::Application.routes.draw do

  root :to => 'lists#index'
  resources :users
  # resources :wishlists
  match '/lists' => 'lists#index'
  match '/lists/:id' => 'lists#show'
  match '/signin' => 'sessions#new'

end
