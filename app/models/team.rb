class Team < ApplicationRecord
  has_many :memberships
  has_many :players, through: :memberships
  has_many :shots
  has_many :games
end
