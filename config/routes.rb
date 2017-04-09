Rails.application.routes.draw do

  get '/books/(:type)', to: 'books#index'
  get '/articles', to: 'articles#index'
  get '/search/:filter', to: 'search#search'
  get '/list/books', to: 'books#top_5'

end
