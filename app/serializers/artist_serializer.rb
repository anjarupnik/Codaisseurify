class ArtistSerializer < ActiveModel::Serializer
  attributes :name

  has_many :songs, dependent: :destroy
  has_one  :photo, dependent: :destroy
end
