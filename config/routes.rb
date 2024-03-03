Rails.application.routes.draw do


  # 顧客用
# URL /customers/sign_in ...
devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

scope module: :public do
  root to: 'homes#top'
  get 'homes/about', as: 'about'
  get '/customers/:id/unsubscribe' => 'customers#unsubscribe', as: 'unsubscribe'
  patch '/customers/:id/withdraw' => 'customers#withdraw', as: 'withdraw'
  resources :items, only: [:index, :show]
  resources :customers, only: [:show, :edit, :update]
  resources :cart_items, only: [:index, :update, :destroy, :destroy_all, :create]
  resources :orders, only: [:new, :comfirm, :complete, :create, :index, :show]
  resources :addresses, only: [:index, :edit, :create, :update, :destroy]
end

namespace :admin do
  root to: 'homes#top'
  resources :items, only: [:index, :new, :create, :show, :edit, :update]
  resources :genres, only: [:index, :create, :edit, :update]
  resources :customers, only: [:index, :show, :edit, :update]
  resources :admins, only: [:destroy]
  resources :orders, only: [:show]
end




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
