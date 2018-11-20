Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  root   'home#index'
  get    '/auth'            => 'home#auth'
  get    '/users'          => 'users#index'
  get    '/users/current'  => 'users#current'
  post   '/users/create'   => 'users#create'
end
