Community::Application.routes.draw do

resources :posts

get 'dashboard' => 'home#index'
get 'register' =>'registration#register'

root :to => 'home#index'

devise_for :members, :controllers => { :registrations =>'registration'}
devise_scope :member do
  get '/members/sign_out' => 'devise/sessions#destroy'
end
 
end
