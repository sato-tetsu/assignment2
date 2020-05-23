class BooksController < ApplicationController
  def top
  end

  def index
  	@book = Book.new
  	@books = Book.all
  end

	def show
		@book = Book.find(params[:id])
	end


	def create
		# ストロングパラメーターを使用
		book = Book.new(book_params)
		# DBへ保存
		if book.save
		# リダイレクト
			redirect_to booklist_path(book.id)
		else
			redirect_to("/books/index")  #またはrender(books/index)
		end
	end


	def edit
		@book = Book.find(params[:id])
	end



	def update
		book = Book.find(params[:id])
		book.update(book_params)
		redirect_to booklist_path(book.id)  #indexにリダイレクトする？
	end

	def destroy
		book = Book.find(params[:id])
		book.destroy
		redirect_to "/books/index"
	end


    private
   
    def book_params
        params.require(:book).permit(:title, :body)
    end

end
