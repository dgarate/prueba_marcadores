Rails.application.routes.draw do
  resources :bookmark_categories
  resources :categories
  resources :bookmark_types
  resources :types
  resources :bookmarks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
