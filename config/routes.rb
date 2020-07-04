Rails.application.routes.draw do
  devise_for :users
  get 'user/index' => 'users#index'
  get 'user/show' => 'users#show', as: :show_user
  get 'user/edit' => 'users#edit', as: :edit_user
  get 'user/new' => 'users#edit', as: :new_user

  get 'home/index' => 'home#index'

  get 'event/:id' => 'events#show'
  get 'api/v1/events/index' => 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/profile/account' => 'profiles#account', as: :account
  get '/search' => 'search#search', as: :search
  get 'document/terms_of_service' => 'documents#tos'
  get 'document/use_policy' => 'documents#aup'

  post 'organizations/new', to: "organizations#create"

  # Limit possible actions on resources to index and show...

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events do
        resources :comments
      end
    end
  end


  resource :messages do
    collection do
      get :inbox
      get :new_messages
    end
  end

  namespace :admin do
    resources :home
    resources :events do
      resources :comments
    end
    root to: 'admin/home#index'
  end

  resources :organizations
  resources :profiles   #, only: [:show, :index, :edit]

  resources :events, defaults: { format: :html }
  resources :comments, defaults: { format: :html }
  resources :document do
    collection do
      get :terms_of_service
      get :use_policy
    end
  end

  post '/messages/new', to: "messages#create"

  post 'organizations/new', to: "organizations#create"
  post 'organizations/add_member', to: "organizations#add_member"
end