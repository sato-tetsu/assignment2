Rails.application.routes.draw do

	get '/' => 'books#top'
	get 'books/index'	=> 'books#index'

	post 'newbook'			=> 'books#create'
	get 'books/index/:id'	=> 'books#show', as: 'booklist'

	get 'books/index/:id/edit'	=> 'books#edit', as: 'edit_booklist'
	patch 'books/index/:id'		=> 'books#update', as: 'update_booklist'
	delete 'books/index/:id'	=> 'books#destroy', as: 'destroy_booklist'

	#resource :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


