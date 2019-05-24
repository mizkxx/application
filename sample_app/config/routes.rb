Rails.application.routes.draw do
#これは対応表#設定情報に関するフォルダ
#get "URL" => "コントローラー名#アクション名"
	get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'top' => 'root#top'

	post 'posts' => 'posts#create'
 #<a>タグで画面遷移する場合はget
 #<form>でデータを送信して画面遷移する場合にはpostを使用する

	get 'posts' => 'posts#index'
	get 'posts/:id' => 'posts#show', as: 'post'
  #.../posts/1や.../posts/3に該当する
  #'posts#show'の設定を「post」として利用できる意味
	get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'

	patch 'posts/:id' => 'posts#update', as: 'update_post'
	delete 'posts/:id' => 'posts#destroy', as: 'destroy_post'
end
