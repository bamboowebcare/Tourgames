Rails.application.routes.draw do
  
  resources :stages

  resources :cycling_teams do 
  		resources :riders
 	end

  get 'welcome/index'
  get 'welcome/yellow'
  get 'welcome/green'
  get 'welcome/white'
  get 'welcome/polka'
  get 'welcome/preview'
     
  root 'welcome#index'

 end
