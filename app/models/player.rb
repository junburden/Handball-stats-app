class Player < ApplicationRecord
  belongs_to :team
  has_many :shots

  def number_and_name
    number.to_s + " " + name
  end
end
