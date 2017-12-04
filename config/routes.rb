Rails.application.routes.draw do
  resources :projects do
  	resources :milestones do
  		resources :todoitems do 
  			member do
  				patch :complete
  			end
  		end
  	end
  end
  root 'projects#index'

end
