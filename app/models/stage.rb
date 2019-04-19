class Stage < ApplicationRecord
  belongs_to :cicle
  has_many :products, dependent: :destroy
  accepts_nested_attributes_for :products
end
