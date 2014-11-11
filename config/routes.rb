Quiltsy::Application.routes.draw do

  # Users
  devise_for :users
  # get ":username", to: "users#show", as: "username"
  # get ":username/edit", to: "users#edit", as: "edit_username"

  # Home Page
  root'home#index'

  # Manufacturers
  resources :manufacturers

  # Fabric URLS
  resources :fabric_collections
  resources :fabrics

  # Internal APIs
  namespace :api do
    namespace :v1 do
      # Fabric API
      get "fabric/get_fabric", to: "fabrics#get_fabric"
      post "fabric/add_fabric", to: "fabrics#add_fabric"

      get "fabric/get_uncolored", to: "fabrics#get_uncolored"
      # post "fabric/add_color", to: "fabrics#add_color"
    end
  end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
