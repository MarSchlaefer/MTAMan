class Subway < ApplicationRecord
  has_many :delays

  validates :letter, presence: true
  validates :color, presence: true, exclusion: {in: %w(blue red orange black)}
end
