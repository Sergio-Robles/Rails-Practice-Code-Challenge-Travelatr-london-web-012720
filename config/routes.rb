# rails g resource Ramon post:references blogger:references --no-test-framework
# rails generate controller Ramons name:string --no-test-framework

Rails.application.routes.draw do
  
  
  resources :ramons, only: [:index, :show, :new, :edit, :create, :update, :delete]
  resources :news_papers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/bloggers', to: 'bloggers#index'
  # get '/bloggers/new', to: 'bloggers#new', as: 'new_blogger' # 'controller#action' and path to specify because of the form_for tag in new.html.erb asking for it
  # post '/bloggers', to: 'bloggers#create'
  # get '/bloggers/:id', to: 'bloggers#show', as: 'blogger_path_route'

  # get '/destinations/:id', to: 'destinations#show'

  # get '/posts/:id', to: 'posts#show'
  # get 'posts/new', to: 'posts#show'


  resources :bloggers
  resources :destinations
  resources :posts
end
