Rails.application.routes.draw do

  root to:'translations#index'
  resources :translations



  #get 'translations', to: 'translations#list'
  #get 'translation/:id', to: 'translations#show', as: 'translation'
  #get 'new_translation', to: 'translations#new'
  #post 'translations', to: 'translations#create'
  #get 'translation/:id/edit', to:'translations#edit', as: 'edit_translation'
  #patch 'translation/:id', to:'translations#update'
  #put 'translation/:id', to:'translations#update'
  #delete 'translation/:id', to: 'translations#destroy'
  #resources :translations
end
#Neste arquivo da aplicação Rails eu digo quais rotas estão disponíveis para a aplicacao

#get 'traducoes' ,  ---leve traducoes para ----- to: 'traducoes#lista'






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
