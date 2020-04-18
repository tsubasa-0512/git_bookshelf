class BooksController < ApplicationController
    def index
        @books = Book.search(params[:search]).includes(:review)
    end
    
    def new
        @book = Book.new
    end
    
    def create
        Book.create(create_params)
        redirect_to :root and return
    end
    
    def destroy
        Book.find(params[:id]).destroy
        redirect_to :root and return
    end
    
    private
    def create_params
        params.require(:book).permit(:title, :genre_id, :author) 
    end

    def sort_direction
        %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
    
      def sort_column
          Book.column_names.include?(params[:sort]) ? params[:sort] : "name"
      end
end
