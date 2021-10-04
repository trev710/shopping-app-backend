class Shelter < ApplicationRecord
    has_many :penguins
    has_many :customers, through: :penguins
end
