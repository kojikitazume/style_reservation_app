Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users

  resources :stylists, only: %i[index show new create edit update] do
    resources :style_photos, only: %i[new create]
    resources :reservations, only: %i[new create]
    resources :reviews, only: %i[new create]
  end

  resources :style_photos, only: [:show]
  resources :reservations, only: [:index]
  resources :reviews, only: [:index]

  # Optional: Tags search
  resources :tags, only: %i[index show]
end
