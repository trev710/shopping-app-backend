class Penguin < ApplicationRecord
  belongs_to :customer

  # validates :username, presence: true, uniqueness: true

end
