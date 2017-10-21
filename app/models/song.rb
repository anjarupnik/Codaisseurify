class Song < ApplicationRecord

  belongs_to :artist

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 30 }, allow_blank: true

end
