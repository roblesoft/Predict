class Month < ApplicationRecord
    has_many :products
    has_many :sales
end
