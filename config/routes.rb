<<<<<<< HEAD
Rails.application.routes.draw do
  resources :line_items
  resources :carts
=======
Depot::Application.routes.draw do
  get "store/index"
>>>>>>> 982e0b938c42361b353433308b8d74d7d0b1a2a3
  resources :products
# The priority is based upon order of creation:
# (Приоритет основан на порядке создания:)
# first created -> highest priority.
# (создан первым -> наивысший приоритет.)
# See how all your routes lay out with "rake routes".
# (Раскладку всех маршрутов можно увидеть с помощью команды "rake routes".)
# You can have the root of your site routed with "root"
# (Корневой маршрут к вашему сайту можно получить с помощью "root")
  root to: 'store#index', as: 'store'
# ...
end




# Rails.application.routes.draw do
#   get 'store/index'
#
#   resources :products
#
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
# end
