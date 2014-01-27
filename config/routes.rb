Photogur::Application.routes.draw do

  #order matters
  #if you put :id first it will try to match "new" into ":id"
  get 'pictures/new' => 'pictures#new' #when pictures/new with get, go to picturescontroller and call new
  post 'pictures' => 'pictures#create' #when pictures with post, go to picturescontroller and call create mthod

  get 'pictures' => 'pictures#index' # when /pictures, go to picturescontrller, and call index method.
  get 'pictures/:id' => 'pictures#show', as: "picture" #when /pictures/:id, go to picturescontroller and call show method.



  #aka
  #picture_path(arg) where arg gets turned into :id


  #get 'pictures/0' => 'pictures#picture0' #when /pictures/0, go to picturescontroller, and call picture0?
  #get 'pictures/1' => 'pictures#picture1' #this is impractical static routing.
  #get 'pictures/2' => 'pictures#picture2' #this is also impractical static routing

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

