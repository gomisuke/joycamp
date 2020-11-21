Rails.application.routes.draw do


  devise_for :admins, controllers: {
  	sessions: 'admins/sessions',
  	passwords: 'admins/password',
  	registrations: 'admins/regstrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "homes#top"
  get 'homes/about' => "homes#about"

  namespace :admin do
    get 'homes/top'
    get 'campsites/new'
    get 'campsites/index'
  end

  namespace :public do
    get 'homes/top'
    resources :campsite
  end
end
