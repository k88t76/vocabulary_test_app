Rails.application.routes.draw do
  root 'pages#home'
  get '/home', to: 'pages#home'
  get '/output', to: 'pages#output'
  get '/pages/new', to: 'pages#new'
  post '/enter', to: 'pages#enter'
  get '/enter', to: 'pages#home' #Error countermeasure
  delete "/destroy/:id", to: 'pages#destroy'
  post '/all_delete', to: 'pages#all_delete'
  get '/pdfs/show_EtoJ', to: 'pdfs#show_EtoJ'
  get '/pdfs/show_JtoE', to: 'pdfs#show_JtoE'

end
