Ali::Application.routes.draw do
   root  'static_pages#home'
   resources :shoots
   resources :photos
  match '/gallery', to: 'static_pages#gallery',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
<<<<<<< HEAD
  match '/shoots', to: 'shoots#show', via: 'get'
  match '/shoots/:id/showadmin', to: 'shoots#showadmin', via: 'get'
  match '/shoots/:id/showadmin/*', to: 'photos#create', via: 'post'
=======
   match '/shoots/showadmin/:shootName', to: 'shoots#showadmin', via: 'get'
>>>>>>> af12f947587ddcb1bd419dac4f66d52bb990ec36

  match '/shoots/:shoot_id/photos/', to: 'shoots#photos', via: 'get'
  match '/show', to: 'shoots#show', via: 'get'
  get '/shoots/go/:catagory', to: 'shoots#show'




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
