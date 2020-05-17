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
  resources :inquiries, only:[:index, :new, :create, :show]
  resources :credit_cards, only:[:index, :new, :create, :edit, :update, :destroy]
  resources :messages, only:[:index, :create, :show]
  resources :favorites, only:[:index, :create, :destroy]
  resources :addresses, only:[:index, :edit, :create, :update, :destroy]
  resources :orders, only:[:index, :new, :create, :show, :edit, :update]
  resources :users, only:[:show, :edit, :update, :destroy] do
    get 'favorites' => 'users#favorites', as:'favorites'
    get 'withdraw', on: :member
  end
  resources :informations, only:[:show]
  resources :courses, only:[:index, :show] do
    get 'confirm' => 'courses#confirm', as:'confirm'
    get 'thanks', on: :collection
  end
  resources :shops, only:[:index, :show] do
    resources :reviews, only:[:create, :destroy]
  end
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
  resources :admin_informations
  resources :inquiries, only:[:index, :update, :show, :destroy]
  resources :reviews, only:[:index, :show, :destroy]
  resources :shop_genres, only:[:index, :create, :edit, :update, :destroy]
  resources :users, only:[:index, :show, :update, :destroy] do
    member do
    patch 'user_restore'
   end
 end
  resources :shops
  get "homes/top" => "admins/top", as:'top'
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
  resources :orders, only:[:index, :show ,:update] do
    patch :not_compatible
    patch :during_correspondence
    patch :support
  end
  resources :informations do
    get :confirm, on: :collection
  end
  #get 'informations/confirm',to:'informations#confirm', as:'confirm_informations'
  resources :courses
  resources :reviews, only:[:index]
  resources :shops, only:[:show, :edit, :update]
end


#----------------------------------------------



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
