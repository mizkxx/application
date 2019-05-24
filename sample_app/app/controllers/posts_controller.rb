class PostsController < ApplicationController
	def new
  		@post = Post.new
	end

	def create
        post = Post.new(post_params)
        post.save # DBへ保存する
        redirect_to post_path(post.id) # 詳細画面へリダイレクト
	end

    def index
    	@posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
    	post = Post.find(params[:id])
        post.update(post_params)
        redirect_to post_path(post.id)
    end

	def destroy
    	post = Post.find(params[:id])#データ(レコード)を1件取得
        post.destroy#レコードをDBから削除
        redirect_to posts_path#post一覧画面へリダイレクト
    end

      private
    def post_params
        params.require(:post).permit(:title, :body, :image)
    end

    
end
