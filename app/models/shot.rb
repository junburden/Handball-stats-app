class Shot < ApplicationRecord
  belongs_to :game
  belongs_to :team
  belongs_to :shooter, :class_name => 'Player', :foreign_key => 'shooter_id', :validate => true
  belongs_to :goalie, :class_name => 'Player', :foreign_key => 'goalie_id', :validate => true

  scope :for_shooter, ->(shooter = nil) { where(shooter_id: shooter) }
  scope :for_team, ->(team = nil) { where(team_id: team) }
end
