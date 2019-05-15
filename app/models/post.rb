class Post < ApplicationRecord
    belongs_to  :user
    has_many  :comments

    validates :title,  presence: true, length: { minimum: 10 }
    validates :category,  length: { minimum: 3 }
                  
end
