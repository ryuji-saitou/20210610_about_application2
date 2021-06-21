Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # homesコントローラー
  root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"

  # booksコントローラー
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]

  # usersコントローラー
  resources :users, only: [:index, :show, :edit, :update]

end