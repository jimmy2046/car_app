Rails.application.routes.draw do

#  devise_for :admins
  devise_for :admins, :skip => [:registrations]
  as :admin do
    get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'    
    put 'admins' => 'devise/registrations#update', :as => 'admin_registration'            
  end    
    
  root 'static_pages#home'    
  get 'static_pages/home'
  get  '/reservations', to: 'static_pages#reservations'
  get  '/adminmenu', to: 'static_pages#adminmenu'
    
  resources :statuses    
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
