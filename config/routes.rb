Website::Application.routes.draw do
  match '/products/:id/calendar_feed', to: 'products#calendar_feed', as: 'calendar_feed'

  match '/pages/agenda' => 'events#index', as: 'agenda'
  match 'aanmelden' => 'subscriptions#new'
  match 'contact' => 'messages#new'

  resources :subscriptions, only: [:new, :create]
  resources :products, only: [:index, :show]
  resources :pages, only: :show
  resources :messages, only: [:new, :create]
  resources :users, only: [:new, :create, :edit]
  resources :events, only: [:index, :show]
  resources :categories, only: [:index, :show]

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  # resources :pages, except: :show
  # get ':id', to: 'pages#show', as: :page

  # resources :pages, except: :show
  # get ':id', to: 'pages#show', as: :page

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root to: "pages#show", id: "home"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  # match '*a', :to => 'errors#routing' unless Rails.application.config.consider_all_requests_local
end
