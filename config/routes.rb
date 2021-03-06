Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            post "/login", to: "sessions#create"
            delete "/logout", to: "sessions#destroy"
            get "/current_user", to: "sessions#show"
            post "/signup", to: "users#create"

            resources :recipes, only: [:index, :show]
        end
    end
end
