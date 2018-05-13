Rails.application.routes.draw do
get '/todo/index' => 'todo#index'
get '/todo/show/:id' => 'todo#show'
get 'todo/new' => 'todo#new'
post 'todo/new' => 'todo#create'
end
