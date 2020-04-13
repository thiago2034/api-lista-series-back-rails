Rails.application.routes.draw do
  get '/post', to: 'post#index'
  post '/post/create', to: 'post#create'
end
