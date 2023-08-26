class Team < ApplicationRecord
  has_many :players
  has_many :participations
  has_many :matches, through: :participations

  def calculate_total_ranking_points
    players.sum(:ranking)
  end
end
