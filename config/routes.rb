Rails.application.routes.draw do
  
  root to: 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/main' => 'dashboard#index', :as => 'dashboard'
  resources :dashboard, only: [:index] do	
  end

end
