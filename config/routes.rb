Rails.application.routes.draw do
  resources :counters, only: :index do
    collection do
      post "count"
    end
  end

  root to: "counters#index"
end
