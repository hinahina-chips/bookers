class BooksController < ApplicationController
  def index
    @book = Book.new#インスタンス生成
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/'
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end



  private

  def book_params
  params.require(:book).permit(:title, :body)#require:モデル名を小文字にしたものpermit カラム
  end

end
