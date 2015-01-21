#The router decides what HTTP requests from the browser are trying to do and what resources
#they are trying to interact with.
Blogger::Application.routes.draw do
  root to: 'articles#index'
  resources :articles do
    resources :comments
    #specified comments as a subresource to articles. Unless we do this,
  end
  #Tells Rails that we have a resource named 'articles' and the router should expect
  #requests involving this resource to follow the RESTful model of web interaction
  #(Representational State Transfer). Ex. For a request like http://localhost:3000/articles,
  #the router will understand we're looking for a listing of articles. For one like http://localhost:3000/articles/new,
  #the router will know we're trying to create a new article.
end
