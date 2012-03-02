VenturaGraphicDesign::Application.routes.draw do

  resources :articles
  match '/blog', to: 'articles#index'

  root :to => 'pages#index'

end
