Rails.application.routes.draw do
  devise_for :users

  root :to =>'registrations#show'
  get '/registrations/new' => 'registrations#new'
  post '/registrations' => 'registrations#create'
  get 'books/new' => 'books#new'
  post 'books' => 'books#create'
  get 'books/show' => 'books#index'
  delete '/books/destroy/:id' => 'books#destroy'
  # get '/user/:id/registrations/show/' => 'registrations#show'
end
