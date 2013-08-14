MotionWeb::Application.routes.draw do
  resources :records

  resources :camcorders

  controller :sessions do
    get 'signup', to: 'users#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    delete 'logout' => :destroy
    get 'logout', to: 'sessions#destroy', as: 'logout', :via => :delete
    #post 'logout', to: 'sessions#destroy', as: 'logout', :via => :delete
  end

  resources :users

  resources :sessions

  get "home/index"
  get "home/live"
  get "home/view"
  root :to => 'home#index'
end
