Rails.application.routes.draw do

  resources :albums
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  root 'static_pages#home'
  get  '/help',       to: 'static_pages#help'
  get  '/about',      to: 'static_pages#about'
  get  '/contact',    to: 'static_pages#contact'
  get  '/campground', to: 'static_pages#campground'
  get  '/mobilehome', to: 'static_pages#mobilehome'
  get  '/estatepark', to: 'static_pages#estatepark'
  get  '/blog', to: 'static_pages#blog'

  get '/campground-album', to: 'albums#campground'
  get '/river-run-album', to: 'albums#river_run'
  get '/estate-park-album', to: 'albums#estate_park'


  get  '/signup',     to: 'users#new'
  post '/signup',     to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :albums
  resources :posts
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
