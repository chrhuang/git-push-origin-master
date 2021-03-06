Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create delete]
  end
  resources :bookmarks, only: [:destroy]
end
