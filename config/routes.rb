Rails.application.routes.draw do

  devise_for :users
  
  get root to: 'homes#top'
  
  get '/homes/about' => 'homes#about',as: 'about'
  
  resources :books, only: [:new, :index, :show, :edit, :create, :update, :destroy]
  
  resources :users, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
