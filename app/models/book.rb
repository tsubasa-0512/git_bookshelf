class Book < ApplicationRecord
    belongs_to :genre
    
    def self.search(search)
        if search
            where(['title LIKE(?)',"%#{search}%"])
        else
            all
        end
    end
end
