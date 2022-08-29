class User < ApplicationRecord
    has_many :posts
    has_and_belongs_to_many :comments
    validates :occupation, presence: true
    validates :occupation, length: {minimum: 2, maximum: 15 }
end

