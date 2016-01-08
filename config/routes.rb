Rails.application.routes.draw do
  
  
  get '/commitments/:category/new' => "commitments#new", :as => "new_commitment"
  
  resources :activity_categories
  resources :commitments
  resources :users
  resources :activities
  # Admin Access
  scope '/admin' do
    get 'answers' => 'answers#index', :as => "all_answers"
    
    resources :questions do
      resources :answers
    end
    
    resources :reduction_options
    
  end
  
  # Public Access    
  get '/home' => 'commitments#index'
  
  
  get '/congratulations' => 'main#congratulate', :as => "congratulate"

  post '/commitments' => 'main#submit_commitments', :as => "submit_commitments"
  
  get '/commitments' => 'main#show_commitments', :as => "show_commitments"
  
  get '/results' => 'main#show_results', :as => "show_results"
  
  get '/calculator', to: redirect('/calculator/1')
  
  get '/calculator/:id' => 'main#show_question', :as => "show_question"
  
  post '/calculator/:id' => 'main#submit_answer', :as => "submit_answer"
  
  root 'main#index'
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
