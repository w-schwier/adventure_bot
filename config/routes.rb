Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :game do
    resources :responses do
      resources :options
    end
  end
end
