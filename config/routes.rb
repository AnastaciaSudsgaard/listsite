Rails.application.routes.draw do

  resources :conects
  resources :crime_lists do
    resources :crime_items
  end
  namespace :crime_list do
    resources :crime_items
  end
  get 'welcome/homepage'
  resources :messages
  resources :rooms
  root 'conects#index'
  

  resources :todo_lists do
    resources :todo_items
  end
  namespace :todo_list do
    resources :todo_items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
