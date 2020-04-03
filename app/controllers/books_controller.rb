class BooksController < ApplicationController
    def index
        @books = Book.all
    end
    
    def new
        @book = Book.new
    end
    
    def create
        Book.create(create_params)
        redirect_to :root and return
    end
    
    private
    def create_params
        params.require(:book).permit(:title, :genre_id, :author) 
    end
end
