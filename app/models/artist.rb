class Artist < ApplicationRecord

  has_many :songs, dependent: :destroy
  has_one  :photo, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true

  scope :sort_name_asc, -> {order(name: :asc)}
  scope :sort_name_desc, -> {order(name: :desc)}
  scope :sort_date_asc, -> {order(created_at: :asc)}
  scope :sort_date_desc, -> {order(created_at: :desc)}
end
