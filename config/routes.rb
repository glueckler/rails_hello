Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # get 'welcome/index' tells Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action
  get 'welcome/index'
 
  # this tells Rails to map requests to the root of the application 
  # to the welcome controller's index action and 
  root 'welcome#index'

  resources :articles
#   articles GET    /articles(.:format)          articles#index
#               POST   /articles(.:format)          articles#create
#   new_article GET    /articles/new(.:format)      articles#new
#  edit_article GET    /articles/:id/edit(.:format) articles#edit
#       article GET    /articles/:id(.:format)      articles#show
#               PATCH  /articles/:id(.:format)      articles#update
#               PUT    /articles/:id(.:format)      articles#update
#               DELETE /articles/:id(.:format)      articles#destroy

end
