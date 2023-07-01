class Order < ApplicationRecord
    has_many :items
    has_many :drinks
    has_many :custard
end
