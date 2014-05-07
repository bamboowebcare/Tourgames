Rails.application.routes.draw do
  
  resources :riders

  get 'sessions/new'

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  
  resources :sessions
  resources :cycling_teams
  
  get 'welcome/index'
  get 'welcome/yellow'
  get 'welcome/green'
  get 'welcome/white'
  get 'welcome/polka'
  get 'welcome/preview'
  get 'welcome/stages'
     
  root 'welcome#index'

 end
