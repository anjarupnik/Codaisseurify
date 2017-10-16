class Artist < ApplicationRecord

  has_many :songs, dependent: :destroy
  has_one  :photo, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true

  def self.sort_name_asc
    order(name: :asc)
  end

  def self.sort_name_desc
    order(name: :desc)
  end
end
