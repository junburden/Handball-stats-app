class Team < ApplicationRecord
  has_many :players
  has_many :shots
  has_many :games
end
