class Participation < ApplicationRecord
  belongs_to :matches
  belongs_to :team
end
