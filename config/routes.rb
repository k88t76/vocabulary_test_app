Rails.application.routes.draw do
  root 'pages#home'
  get '/home', to: 'pages#home'
  get '/output', to: 'pages#output'
  get '/new', to: 'pages#new'
  post '/enter', to: 'pages#enter'
  delete "/destroy/:id", to: 'pages#destroy'
  get '/pdfs/show_EtoJ', to: 'pdfs#show_EtoJ'
  get '/pdfs/show_JtoE', to: 'pdfs#show_JtoE'
  
end
