Rails.application.routes.draw do
	get '/' => 'expenses#new'

	get '/expenses/new' => 'expenses#new'
	get '/expenses/index' => 'expenses#index'
	get '/expenses/:id/edit' => 'expenses#edit'
	post '/expenses/create' => 'expenses#create'
	post '/expenses/:id/update' => 'expenses#update'
	delete '/expenses/:id/destroy' => 'expenses#destroy'

	# resource only: [:new, :create, :index]
end
