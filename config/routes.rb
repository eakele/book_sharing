Rails.application.routes.draw do
  devise_for :users

  root :to =>'static_pages#home'
  get '/registrations/new' => 'registrations#new'
  post '/registrations' => 'registrations#create'
  get 'books/new' => 'books#new'
  post 'books' => 'books#create'
  get 'books/show' => 'books#index'
  delete '/books/destroy/:id' => 'books#destroy'

  get  'static_pages/home'
  get '/books/edit/:id' => 'books#edit'
  patch '/books/update' => 'books#update'
end
