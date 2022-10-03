class BooksController < ApplicationController
  def index
    @book = Book.new#インスタンス生成
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to book_path(book.id)
    else
      @book = Book.new#インスタンス生成
      @books = Book.all
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)#引数は入力後の内容
      redirect_to book_path(book.id)
    else
      @book = Book.find(params[:id])
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy#消すだけだから引数いらない
    redirect_to books_path
  end



  private

  def book_params
  params.require(:book).permit(:title, :body)#require:モデル名を小文字にしたものpermit カラム
  end

end
