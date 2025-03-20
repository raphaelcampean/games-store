class Game < ApplicationRecord
  validates_presence_of :title, :genre, :platform, :description, :release_date, :developer, :price

  belongs_to :genre
  belongs_to :developer
  has_and_belongs_to_many :platforms
end
