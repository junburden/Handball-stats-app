class Membership < ApplicationRecord
  belongs_to :team
  belongs_to :player

  scope :for_team, ->(team = nil) { where(team_id: team) }
  scope :active, -> { where(active: true) }

  def number_and_name
    number.to_s + " " + player.last_name
  end
end
