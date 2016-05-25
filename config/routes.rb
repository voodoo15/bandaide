Rails.application.routes.draw do

  devise_for :musicians
  root 'home#index'

  resources :bands, except: [:destroy] do
      resources :members, only: [:create, :destroy, :new, :update] do
        resources :approvals, only: [:create, :update]
      end
  end

  resources :musicians, only: [:show,:edit,:update] do
      resources :skills, only: [:create, :update]
  end

  resources :home, only: [:index]
  resources :search, only:  [:index]

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle's
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
