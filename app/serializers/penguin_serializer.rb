class PenguinSerializer < ActiveModel::Serializer
  attributes :id, :name, :origin, :price, :bio, :shelter, :image_url
  has_one :customer
end
