Rails.application.routes.draw do
  root :to => 'home#index'
  get '/products', :to => 'products#index'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/get_notification', :to => "notifications#get_notification"
  post '/post_notification', :to => "notifications#post_notification"
end
