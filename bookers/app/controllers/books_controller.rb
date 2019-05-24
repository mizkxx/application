class BooksController < ApplicationController

  def top
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  	@book = Book.find(params[:id])#@がつくとインスタンス変数
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def create
        # ストロングパラメーターを使用
    book = Book.new(book_params)#@がないとローカル変数
      if book.save
        flash[:notice] = "Book was successfully created."
      else
        flash[:danger] = 'mistake'
      end
    redirect_to book
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
        flash[:notice] = "Book was successfully updated."
      else#これないとミスる
        flash[:danger] = 'mistake'
      end
    redirect_to book
  end

  def destroy
  	book = Book.find(params[:id])#データ(レコード)を1件取得
    book.destroy#レコードをDBから削除
    redirect_to books_path#post一覧画面へリダイレクト
  end

   private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end