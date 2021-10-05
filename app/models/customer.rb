class Customer < ApplicationRecord
    has_many :penguins
    has_many :shelters, through: :penguins

    validates :username, presence: true, uniqueness: true
    # has_secure_password
end
