Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'

  resources :schools
  # get '/schools/show' => 'schools#show'
  # get '/schools/:id'    => 'schoos#show', as: :school

  # # Qualifications.
  # post '/qualifications'          => 'qualifications#create'
  # get  '/qualifications/:qualification_id' => 'qualifications#index'

  #get '/schools',              to: redirect('/'), as: :schools

end
