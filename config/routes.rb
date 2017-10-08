Rails.application.routes.draw do
  resources :comments
  devise_for :users
  get 'pages/info'

  resources :ideas, :path => "cats"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/cats')
end
