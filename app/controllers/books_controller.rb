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
			flash[:notice] = "Book was successfully created."
			redirect_to book_path(book.id)
		else
			flash[:alert1] = book.errors.full_messages
			redirect_to books_path  #またはrender(books/index)
		end
	end





	def edit
		@book = Book.find(params[:id])
	end



	def update
		book = Book.find(params[:id])

		if book.update(book_params)
			flash[:notice] = "Book was successfully updated."
			redirect_to book_path(book.id)
		else
			flash[:alert1] = book.errors.full_messages
			redirect_to edit_book_path
		end
	end

	def destroy
		book = Book.find(params[:id])
		book.destroy
		flash[:notice] = "Book was successfully destroyed."
		redirect_to books_path
	end


    private
   
    def book_params
        params.require(:book).permit(:title, :body)
    end

end
