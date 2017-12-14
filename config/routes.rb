Rails.application.routes.draw do

  root to: 'pages#home'

  get 'campground', to: 'pages#campground'

  get 'mobilhomepark', to: 'pages#mobilhomepark'

  get 'estatepark', to: 'pages#estatepark'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
