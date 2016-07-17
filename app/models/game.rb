class Game < ApplicationRecord
  belongs_to :home, :class_name => 'Team', :foreign_key => 'home_id', :validate => true
  belongs_to :away, :class_name => 'Team', :foreign_key => 'away_id', :validate => true
  has_many :shots

  def details
    "#{date} #{home.name} vs #{away.name}"
  end

  def home_team_score
    Shot.where(team_id: home.id, game_id: id, goal: true).count
  end

  def away_team_score
    Shot.where(team_id: away.id, game_id: id, goal: true).count
  end
end
