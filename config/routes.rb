Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'reservations/new'
  get 'reservations/create'
  get 'style_photos/new'
  get 'style_photos/create'
  get 'stylists/index'
  get 'stylists/show'
  get 'pages/home'
  devise_for :stylists
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
