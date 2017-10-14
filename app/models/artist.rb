class Artist < ApplicationRecord

  has_many :songs, dependent: :destroy
  has_one  :photo, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true

end
