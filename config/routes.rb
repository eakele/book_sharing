Rails.application.routes.draw do
  devise_for :users

  root :to =>'static_pages#home'
  get '/volunteer/new' => 'volunteers#new'
  post 'volunteer' => 'volunteers#create'

  get 'book/new' => 'books#new'
  post 'book' => 'books#create'
  delete '/book/destroy/:id' => 'books#destroy'
  get 'books/show' => 'books#index'


  get '/book/edit/:id' => 'books#edit'
  patch '/book/update' => 'books#update'

  get  'static_page/home'
  get 'charts/all' => 'cart#index'
  get '/chart/view/:id' => 'cart#show'

  get 'cart/new' => 'cart#new'
  post 'cart' => 'cart#create'
  get 'institution/new' => 'institutions#new'
  post 'institution' => 'institutions#create'

end
