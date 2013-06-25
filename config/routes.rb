Magpie::Application.routes.draw do

  root :to => 'wishlists#index'
  resources :users
  resources :wishlists

end
