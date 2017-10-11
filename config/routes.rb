Rails.application.routes.draw do
  get 'extras/profile'

  get 'extras/home'

	devise_for :users
	get '/projects/search' => 'projects#search'
 	resources :projects

  
  root to: "static#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
