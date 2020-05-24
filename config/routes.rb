Rails.application.routes.draw do

	root 'books#top'
	resources :books

	#get 'books/index'	=> 'books#index'

	#post 'create'			=> 'books#create'
	#get 'books/index/:id'	=> 'books#show', as: 'booklist'

	#get 'books/index/:id/edit'	=> 'books#edit', as: 'edit_booklist'
	#patch 'books/index/:id'		=> 'books#update', as: 'update_booklist'
	#delete 'books/index/:id'	=> 'books#destroy', as: 'destroy_booklist'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


