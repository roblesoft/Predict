class Sale < ApplicationRecord
    validates :name, uniqueness: true
end
