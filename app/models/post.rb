class Post < ApplicationRecord
    belongs_to  :user
    has_many  :comments

    validates :title,  presence: true, length: { minimum: 10 }
    validates :category,  length: { minimum: 3 }
    VALID_URL_REGEX = /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/i 
      validates :url, presence: true, length: { maximum: 255 },
                    format: { with: VALID_URL_REGEX },
                    uniqueness: { case_sensitive: false }

    
end
