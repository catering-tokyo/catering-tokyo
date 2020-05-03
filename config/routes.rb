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
  resources :inquiries, only:[:index, :new, :show]
  resources :credit_cards, only:[:index, :new, :edit]
  resources :messages, only:[:index, :show]
  resources :favorites, only:[:index]
  resources :addresses, only:[:index, :edit]
  resources :orders, only:[:index, :new, :show] do
    get 'confirm' => 'users#confirm', as:'confirm'
    get 'thanks' => 'users#thanks', as:'thanks'
  end
  resources :users, only:[:show, :edit] do
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
  resources :inquiries, only:[:index, :new, :show, :edit]
  resources :reviews, only:[:index, :show]
  resources :genres, only:[:index, :edit]
  resources :users, only:[:index, :show, :edit]
  resources :shops, only:[:index, :new, :show]
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
  resources :inquiries, only:[:index, :new, :show]
  resources :messages, only:[:index, :show]
  resources :orders, only:[:index, :show]
  resources :informations, only:[:index, :new, :show, :edit]
  resources :genres, only:[:index, :edit]
  resources :courses, only:[:index, :new, :show, :edit]
  resources :shops, only:[:show, :edit]
end


#----------------------------------------------



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
