Rails.application.routes.draw do
	scope :skill do 
		scope :v1 do
			  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
		end
	end
	root 'products#index'
	resources :products
end
