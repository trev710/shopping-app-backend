class PenguinSerializer < ActiveModel::Serializer
  attributes :id, :name, :origin, :age, :bio
  has_one :customer
  has_one :shelter
end
