Rails.application.routes.draw do
  resources :new_musics
  get 'home/index'
  get 'welcome/index'
  post 'home/create'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
