PdfLib::Application.routes.draw do
  get "pdf_files/recension/:id" => "pdf_files#recension", as: "recension"
  get "pdf_files/rate/:id" => "pdf_files#rate", as: "rate"
  get "pdf_files/download/:id" => "pdf_files#download", as: "pdf_download"
  resources :pdf_files
 
  devise_for :users
  get "profile" => "users#profile", as: "user_root"
  get "gallery" => "pages#gallery", as: "gallery"
  get "publicfile/:id" => "pages#file", as: "pubfile"
  post "gallery" => "pages#search", as: "search"

  resources :pages do
    collection do
      match 'search' => 'pages#search', via: [:get, :post], as: :search
    end
  end

  root to: "pages#home"



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
