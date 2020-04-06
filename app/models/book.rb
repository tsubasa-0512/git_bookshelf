class Book < ApplicationRecord
    belongs_to :genre
    has_one :review
    
    def self.search(search)
        if search
            where(['title LIKE(?)',"%#{search}%"])
        else
            all
        end
    end
end
