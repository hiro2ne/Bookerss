Rails.application.routes.draw do
  get '/books' => 'books#index'
  get  'books/:id/edit' => 'books#edit', as: 'edit_list'
  get '/' => 'homes#top'
  get 'books/:id' => 'books#show', as: 'book'
  patch 'books/:id' => 'books#update', as: "update_list"
  delete 'books/:id' => 'books#destroy', as: 'destroy_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
end
