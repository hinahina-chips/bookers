Rails.application.routes.draw do
  get '/books' => 'books#index'
  post 'books' => 'books#create', as: 'create_book'
  get 'books/:id' => 'books#show', as: 'show_book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get '/' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
