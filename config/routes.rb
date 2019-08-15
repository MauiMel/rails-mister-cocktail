Rails.application.routes.draw do
  resources :cocktails do
    resources :dose do
      resources :ingredient
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
