class Ride < ApplicationRecord
  has_many :ride_mechanics
  has_many :mechanics, through: :ride_mechanics

  def self.open
    self.where("rides.open = true")
  end

  def self.thrills
    self.order("thrill_rating desc")
      .where("rides.open = true")
  end
end
