class Player < ApplicationRecord
  has_many :memberships
  has_many :teams, through: :memberships
  has_many :shots

  def number_and_name
    number.to_s + " " + last_name
  end

  def name
    first_name + " " + last_name
  end
end
