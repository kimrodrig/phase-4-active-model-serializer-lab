Rails.application.routes.draw do
  resources :tags, only: [:index, :show]
  resources :posts, only: [:index, :show] do
    resources :tags
  end
  resources :authors, only: [:index, :show] do
    resources :posts do
      resources :tags
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
