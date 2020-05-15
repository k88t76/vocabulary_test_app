Rails.application.routes.draw do
  root 'pages#home'
  get '/home', to: 'pages#home'
  get '/output', to: 'pages#output'
  get '/new', to: 'pages#new'
  post '/enter', to: 'pages#enter'
  get '/pdfs/show', to: 'pdfs#show'
end
