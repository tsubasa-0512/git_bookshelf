class ReviewsController < ApplicationController
    def new
        @book = Book.find(params[:book_id])
        @review = Review.new
    end
    
    def create
        Review.create(create_params)
        redirect_to :root and return
    end
    
    def show
        @review = Review.find(params[:id])
        @book = @review.book
    end
    
    def edit
        @review = Review.find(params[:id])
        @book = @review.book
    end
    
    def update
        review = Review.find(params[:id])
        review.update(update_params)
        redirect_to controller: :reviews,action: :show, id: review.id
    end
    
    private
    def create_params
        params.require(:review).permit(:content).merge(book_id: params[:book_id])
    end
    
    def update_params
        params.require(:review).permit(:content).merge(book_id: params[:book_id])
    end
end
