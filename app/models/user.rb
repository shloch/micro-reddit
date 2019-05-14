class User < ApplicationRecord
    validates :username,  presence: true, length: { minimum: 6 }
end
