class SongSerializer < ActiveModel::Serializer
  attributes :name, :link, :id


  belongs_to :artist
end
