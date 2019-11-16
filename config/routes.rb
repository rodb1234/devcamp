Rails.application.routes.draw do
  resources :portfolios
  #get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'pages/contact'
  resources :blogs
	root to: 'pages#home' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
