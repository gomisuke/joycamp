Rails.application.routes.draw do


  devise_for :publishers

  #devise_routing
  devise_for :admins, controllers: {
  	sessions: 'admins/sessions',
  	passwords: 'admins/password',
  	registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#top'
  get 'homes/top'
  get 'homes/about'

  namespace :admin do
    get 'homes/top'
    get 'admins/mypage'
    resources :campsites
  end

  namespace :public do
    get 'homes/about'
    resources :campsites do
      resources :favorites, only: [:create, :destroy]
      resources :campsite_comments, only: [:create, :destroy]
      resources :posts
    end
    get 'users/mypage'
    get 'campsite/search' => 'campsites#search'
  end

  namespace :publisher do
    get 'publishers/management'
    resources :users
    resources :campsites
    patch 'campsite/:id/approval' => 'campsites#approval', as:"campsite_approval"
    patch 'campsite/:id/approval_revoked' => 'campsites#approval_revoked', as:"campsite_approval_revoked"
    resources :genres

  end


end
