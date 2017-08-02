Rails.application.routes.draw do
  resources :game do
    resources :responses do
      resources :options
    end
  end
end
