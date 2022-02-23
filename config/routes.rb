Rails.application.routes.draw do
  get '/' => 'home#top'
  get '/res' => 'home#reservation'
  get '/enter' => 'home#enter'
  post '/create_enter' => 'home#create_enter'
  post '/create_res' => 'home#create_res'
  get '/:id' => 'home#show'
  get '/:id/edit' => 'home#edit'
  post '/:id/edit/update' => 'home#update'
  post '/:id/destroy' => 'home#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
