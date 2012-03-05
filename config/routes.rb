VenturaGraphicDesign::Application.routes.draw do

  root :to => 'pages#index'

  match 'pages(/:action)', controller: 'pages'

end
