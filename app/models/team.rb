class Team < ApplicationRecord
  has_many :players
  has_many :participations
  has_many :matches, through: :participations
end
