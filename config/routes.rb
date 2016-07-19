Rails.application.routes.draw do
  devise_for :users

  root :to =>'static_pages#home'
  get '/volunteer/new' => 'volunteers#new'
  post 'volunteer' => 'volunteers#create'
  get 'book/new' => 'books#new'
  post 'book' => 'books#create'
  get 'books/show' => 'books#index'
  delete '/book/destroy/:id' => 'books#destroy'
  get  'static_page/home'
  get '/book/edit/:id' => 'books#edit'
  patch '/book/update' => 'books#update'

end
