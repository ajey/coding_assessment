Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: :create do
        collection do
          post 'confirm'
          post 'login'
        end
      end

      resources :appointments do
        collection do
          get 'weekly'
          get 'available'
        end
      end

      resources :doctors do
        collection do
          get 'appointments'
          get 'weekly_appointments'
        end
      end
    end
  end
end
