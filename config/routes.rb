Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
  resources :users
  
  get '/wca_events', to: 'scrape#wca_events'

  get '/users/:user_id/cubes/:cube_type', to: 'cubes#show'
  post '/users/:user_id/cubes/:cube_type/add_record', to: 'cubes#add_records'
  

  resources :users do
    resources :cubes
  end

end