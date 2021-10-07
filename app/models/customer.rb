class Customer < ApplicationRecord
    has_many :penguins

    validates :username, presence: true, uniqueness: true
    # has_secure_password
end
