class SongSerializer < ActiveModel::Serializer
  attributes :name, :link


  belongs_to :artist
end
