Rails.application.routes.draw do
  root "pages#home"

  devise_for :users
  devise_for :stylists

  resources :stylists, only: [:index, :show] do
    resources :style_photos, only: [:new, :create]
    resources :reservations, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :style_photos, only: [:show]
  resources :reservations, only: [:index]
  resources :reviews, only: [:index]

  # Optional: Tags search
  resources :tags, only: [:index]
end
