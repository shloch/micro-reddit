class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post

    validates :text,  presence: true, length: { minimum: 6 }
end
