Rails.application.routes.draw do
  get 'home/index' => 'home#index'
  get 'event/:id' => 'events#show'
  get 'api/v1/events/index' => 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  # Limit possible actions on resources to index and show...

  namespace :api, defaults: { format: :json } do
   namespace :v1 do
     resources :events do
       resources :comments
     end
   end
  end

  resources :events, defaults: { format: :html }
  resources :comments, defaults: { format: :html }


  resources :organizations, only: [:show, :index]
  resources :profiles, only: [:show, :index]
end
