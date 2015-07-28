Rails.application.routes.draw do
  # CREATE
  get '/new' => 'user#new'
  get '/create' => 'user#create'
  
  # READ
  get '/mov/:id' => 'user#show'
  get '/mov' => 'user#index'
  
  # UPDATE
  get '/mov/:id/edit' => 'user#edit'
  get '/update/:id' => 'user#update'
  
  #DESTROY
  get '/mov/:id/destroy' => 'user#destroy'
  
end
