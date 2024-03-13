Rails.application.routes.draw do
  resources :posts do
    resources :elements do
      collection do
        patch :change_position
      end
    end
  end
  get "up" => "rails/health#show", as: :rails_health_check
  get "set_theme", to: "welcome#set_theme"
  root "welcome#home", as: :home
end
