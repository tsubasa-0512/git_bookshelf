class ReadingtimesController < ApplicationController
    def create
        @readingtime = Readingtime.create(book_id: params[:book_id], genre_id: params[:genre_id]) 
        @readingtime_count = Readingtime.where(book_id: params[:book_id]).count
        @book = Book.find(params[:book_id])
    end
    
    def index
        @readingtime = Readingtime.group(:genre_id).count
        @genre = Genre.all
    end
end



