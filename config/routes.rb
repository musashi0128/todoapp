Rails.application.routes.draw do
  root to: 'templates#index'
  
  namespace :api, defaults: { format: :json } do
    resources :todo_lists, only: [:index, :show, :create, :destroy] do
      resources :todos, except: [:index, :new, :edit, :show]
    end
  end
  
  get '/dashboard'      => 'templates#index'
  get '/todo_lists/:id' => 'templates#index'
  get '/templates/:path.html' => 'templates#template', constraints: { path: /.+/ }
  
end
