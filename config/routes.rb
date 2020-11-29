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
    resources :campsites
  end

  namespace :public do
    get 'homes/about'
    resources :campsites do
      resources :favorites, only: [:create, :destroy]
    end
    get 'users/mypage'
  end

  namespace :publisher do
    get 'publishers/management'
    resources :genres

  end


end
