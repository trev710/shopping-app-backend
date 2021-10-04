class Penguin < ApplicationRecord
  belongs_to :customer
  belongs_to :shelter
end
