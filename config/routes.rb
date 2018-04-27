Rails.application.routes.draw do
  get 'business_case' => 'business_case#index'
  get 'business_case/new' => 'business_case#new'
  get 'business_case/:id' => 'business_case#show'
  get 'business_case/:id/edit' => 'business_case#edit'
  get 'business_case/:id/delete' => 'business_case#delete'
  patch 'business_case/:id' => 'business_case#update'
  delete 'business_case/:id' => 'business_case#destroy'
  post 'business_case' => 'business_case#create'

  get 'users' => 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
