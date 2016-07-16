Rails.application.routes.draw do
  devise_for :users

  root :to =>'registrations#show'
  get '/registrations/new' => 'registrations#new'
  post '/registrations' => 'registrations#create'
  # get '/user/:id/registrations/show/' => 'registrations#show'
end
