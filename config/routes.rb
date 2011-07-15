RailsSpace::Application.routes.draw do

  get "email/remind"

  get "avatar/index"

  get "avatar/upload"

  get "avatar/delete"

  get "community/index"

  get "community/browse"

  get "community/search"

  get "faq/index"

  get "faq/edit"

  post "faq/edit"

  get "spec/index"

  get "spec/edit"

  post "spec/edit"

  get "profile/index"

  get "profile/show"

  get "user/index"

#  get "user/register"

  get "site/index"

#  get "site/about"

#  get "site/help"

match 'about' => 'site#about'
match 'help' => 'site#help'
match 'register' => 'user#register'
match 'login' => 'user#login'
match 'logout' => 'user#logout'
match 'edit' => 'user#edit'
match 'profile/:screen_name' => 'profile#show', :as => :profile
match 'user' => 'user#index', :as => :hub
match 'community' => 'community#index'

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
  # root :to => "welcome#index"
root :to => 'Site#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
