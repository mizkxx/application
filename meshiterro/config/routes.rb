Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  	resource :favorites, only: [:create, :destroy]
    resource :post_comments, only: [:create, :destroy]
    #単数にするとそのコントローラのidがリクエストに含まれなくなります。
	#今回、post_commentsのshowページは必要ない（コメントの詳細ページは作成しない）ため、idを受け渡す必要がなくresourceとしています。
	end
	 resources :users, only: [:show]
end
