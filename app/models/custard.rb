class Custard < ApplicationRecord
  belongs_to :order
  has_many :custard_adjusters
end
