
Rails.application.routes.draw do
	root   'static_pages#home'

	get    '/help',    to: 'static_pages#help'
	get    '/about',   to: 'static_pages#about'
	post   '/about',    to: 'static_pages#about'
	get    '/contact', to: 'static_pages#contact'
	post   '/contact', to: 'static_pages#send_email', as: 'email'
	get    '/signup',  to: 'users#new'
	get    '/login',   to: 'sessions#new'
	post   '/login',   to: 'sessions#create'
	delete '/logout',  to: 'sessions#destroy'
	resources :users do
		member do
			get :following, :followers
		end
	end

	resources :posts,          only: [:create, :destroy]
	resources :relationships,       only: [:create, :destroy]
	resources :account_activations, only: [:edit]
	resources :password_resets,     only: [:new, :create, :edit, :update]
	scope module: :v1, constraints: ApiVersion.new('1.0') do
		resources :solar_systems, only: :index, path: "solarsystem"

	end
	scope module: :v2, constraints: ApiVersion.new('2.0', true) do
		resources :solar_systems, only: :index, path: "solarsystem"
		resources :solar_systems, only: :index, path: "mercury"
		resources :solar_systems, only: :index, path: "venus"
		resources :solar_systems, only: :index, path: "earth"
		resources :solar_systems, only: :index, path: "mars"
		resources :solar_systems, only: :index, path: "jupiter"
		resources :solar_systems, only: :index, path: "saturn"
		resources :solar_systems, only: :index, path: "uranus"
		resources :solar_systems, only: :index, path: "neptune"
	end


	# post 'auth/login', to: 'authentication#authenticate'
	# post 'auth/signup', to: 'users#create'
end