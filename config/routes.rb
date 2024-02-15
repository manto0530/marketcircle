Rails.application.routes.draw do
  resources :details
  # resources :masters
  root 'home#index'

  resources :masters do
    resources :details
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
