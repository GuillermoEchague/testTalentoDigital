Rails.application.routes.draw do
  root to: 'welcome#index'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
