Rails.application.routes.draw do


# user #

# devise
  devise_for :users, controllers: {
    sessions:      'devise/users/sessions',
    passwords:     'devise/users/passwords',
    registrations: 'devise/users/registrations'
  }

# 機能
root 'users/homes#top'
get "homes/about" => "users/homes#about"
namespace :users do
  resources :reviews, only:[:create, :destroy]
  resources :inquiries, only:[:index, :new, :create, :show]
  resources :credit_cards, only:[:index, :new, :create, :edit, :update, :destroy]
  resources :messages, only:[:index, :create, :show]
  resources :favorites, only:[:index, :create, :destroy]
  resources :addresses, only:[:index, :edit, :create, :update, :destroy]
  resources :orders, only:[:index, :new, :create, :show] do
    get 'confirm' => 'users#confirm', as:'confirm'
    get 'thanks' => 'users#thanks', as:'thanks'
  end
  resources :users, only:[:show, :edit, :update, :destroy] do
    get 'favorites' => 'users#favorites', as:'favorites'
    get 'withdraw', on: :member
  end
  resources :infomations, only:[:show]
  resources :courses, only:[:index, :show]
  resources :shops, only:[:index, :show]
end



# admin #

# devise
  devise_for :admins, controllers: {
    sessions:      'devise/admins/sessions',
    passwords:     'devise/admins/passwords',
    registrations: 'devise/admins/registrations'
  }

# 機能 #
namespace :admins do
  resources :inquiries, only:[:index, :update, :show, :destroy]
  resources :reviews, only:[:index, :show, :destroy]
  resources :shop_genres, only:[:index, :create, :edit, :update, :destroy]
  resources :users, only:[:index, :show, :update]
  resources :shops
end

#----------------------------------------------



# shop #

# devise
  devise_for :shops, controllers: {
    sessions:      'devise/shops/sessions',
    passwords:     'devise/shops/passwords',
    registrations: 'devise/shops/registrations'
  }


namespace :shops do
  resources :inquiries, only:[:index, :new, :create, :show]
  resources :messages, only:[:index, :show, :create]
  resources :orders, only:[:index, :show ,:update]
  resources :informations
  resources :courses
  resources :reviews, only:[:index]
  resources :shops, only:[:show, :edit, :update]
end


#----------------------------------------------



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end