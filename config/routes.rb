VenturaGraphicDesign::Application.routes.draw do

  resources :articles
  match '/blog', to: 'articles#index'

  match '/admin', to: 'admin#index'
  match '/admin/login', to: 'admin#login', as: 'login'
  match '/admin/logout', to: 'admin#logout', as: 'logout'
  match '/admin(/:action)', controller: :admin

  root :to => 'pages#index'

end
