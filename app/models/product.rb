class Product < ApplicationRecord
    validates :name, presence: true
    validates :occupation, presence: true
end
