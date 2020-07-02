Rails.application.routes.draw do
  root 'pages#home'
  get '/home', to: 'pages#home'
  post '/new', to: 'pages#new'
  get '/new', to: 'pages#home'
  delete '/destroy/:id', to: 'pages#destroy'
  get '/edit/:id', to: 'pages#edit'
  post '/edit/:id/update', to: 'pages#update'
  post '/all_delete', to: 'pages#all_delete'
  get '/pdfs/show_EtoJ', to: 'pdfs#show_EtoJ'
  get '/pdfs/show_JtoE', to: 'pdfs#show_JtoE'
  
end
