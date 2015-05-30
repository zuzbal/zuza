Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/hello'
  root to: 'welcome#hello'
  
  resources :destinations
  
  
end
