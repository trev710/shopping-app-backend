class Customer < ApplicationRecord
    has_many :penguins
    has_many :shelters, through: :penguins
end
