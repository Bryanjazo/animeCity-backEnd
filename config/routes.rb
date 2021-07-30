Rails.application.routes.draw do
  resources :favorites
  resources :animes
  resources :sessions
  resources :users do
    resources :watches
      resources :favorites
  end

  resources :watches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
