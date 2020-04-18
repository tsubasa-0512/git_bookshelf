class Book < ApplicationRecord
    belongs_to :genre
    has_one :review
    has_many :readingtimes
    
    def self.search(search)
        if search
            where(['title LIKE(?)',"%#{search}%"])
        else
            all
        end
    end
end
