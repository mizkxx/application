class BlogsController < ApplicationController
	def show
  		@blog = Blog.find(params[:id])
	end

	def index# 記事を全件取得
    	@blogs = Blog.all#投稿されたデータはBlogモデルが扱っている
	end

	def new
  		@blog = Blog.new
	end

	def create
		blog = Blog.new(blog_params)
		blog.save
		redirect_to blogs_path
	end

	def edit
	end
end
