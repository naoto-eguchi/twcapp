Rails.application.routes.draw do
  root to: 'twcs#top'
  resources :twcs do
    collection do
      post :confirm
    end
  end
end
