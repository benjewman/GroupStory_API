Rails.application.routes.draw do
  resources :chapters, only: [:index]
  resources :stories, only: [:index, :show]
  get 'last', to: 'stories#last'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
