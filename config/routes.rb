Rails.application.routes.draw do
	get '/' => 'expenses#new'

	get '/expenses/new' => 'expenses#new'
	get '/expenses/index' => 'expenses#index'
	post '/expenses/create' => 'expenses#create'

	# resource only: [:new, :create, :index]
end
