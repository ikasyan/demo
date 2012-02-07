Demo2::Application.routes.draw do
  resources :autos
  root :to => 'autos#index'
end
