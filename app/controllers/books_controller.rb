class BooksController < ApplicationController
  def index
    @book = Book.new#インスタンス生成
  end

  def show
  end

  def edit
  end


end
