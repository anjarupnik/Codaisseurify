class ArtistSerializer < ActiveModel::Serializer
  attributes :name, :id

  has_many :songs, dependent: :destroy
  has_one  :photo, dependent: :destroy
end
