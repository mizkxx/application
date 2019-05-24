Rails.application.routes.draw do

	get '/' => 'books#top'
	resources :books
  #get 'books/show'
  #get 'books/index'
  #get 'books/edit'
  #root to: 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	#get 'books/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	#post 'books' => 'books#create'
 #<a>タグで画面遷移する場合はget
 #<form>でデータを送信して画面遷移する場合にはpostを使用する

	#get 'books/index' => 'books#index'
	#get 'books/:id' => 'books#show', as: 'book'
  #.../posts/1や.../posts/3に該当する
  #'posts#show'の設定を「post」として利用できる意味
	#get 'books/:id/edit' => 'books#edit', as: 'edit_book'

	#patch 'books/:id' => 'books#update', as: 'update_book'
	#delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end