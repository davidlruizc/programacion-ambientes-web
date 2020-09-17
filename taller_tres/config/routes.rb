Rails.application.routes.draw do
  get 'bienvenidos/index'
  get 'articulos/new'
  post 'articulos' => 'articulos#create'
  get 'articulos/:id' => 'articulos#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
