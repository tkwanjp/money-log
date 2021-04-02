Rails.application.routes.draw do
	root to: 'expenses#new'

	resources :expenses, except: :show	
	
	# get '/expenses/new' => 'expenses#new'
	# get '/expenses/index' => 'expenses#index'
	# get '/expenses/:id/edit' => 'expenses#edit'
	# post '/expenses/create' => 'expenses#create'
	# post '/expenses/:id/update' => 'expenses#update'
	# delete '/expenses/:id/destroy' => 'expenses#destroy'

end
