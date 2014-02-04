NoMoreLonely::Application.routes.draw do
  # get "home/index"
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  
  match "/is_email_avail", :to => "application#is_email_avail", :as => "is_email_avail", via: [:get, :post]
  match "/is_username_avail", :to => "application#is_username_avail", :as => "is_username_avail", via: [:get, :post]


  match "/subrooms_home/:b_id", :to => "home#subrooms_home", :as => "subroom_home", via: [:get, :post]
  match "/subrooms/:b_id", :to => "home#subrooms", :as => "subroom", via: [:get, :post]
  match "/new_subroom/:b_id", :to => "home#new_subroom", :as => "new_subroom", via: [:get, :post]
  match "/create_subroom", :to => "home#create_subroom", :as => "create_subroom", via: [:get, :post]
  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
