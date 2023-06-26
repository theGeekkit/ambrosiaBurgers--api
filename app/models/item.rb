class Item < ApplicationRecord
  belongs_to :order
  has_many :adjusters
end
