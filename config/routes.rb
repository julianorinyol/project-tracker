Rails.application.routes.draw do
  resources :content_pieces
  resources :milestones
  resources :organizations
  resources :projects

  get '/users/choose/student' => 'users#student'
  get '/users/choose/employer' => 'users#employer'

  get '/projects/:id/join' => "projects#join"
  get '/projects/:id/leave' => "projects#leave"
  get '/milestones/:id/mark' => "milestones#mark_completed"


  resources :users
  root to: 'users#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
