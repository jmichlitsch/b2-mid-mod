class Mechanic < ApplicationRecord
  has_many :ride_mechanics
  has_many :rides, through: :ride_mechanics

  def self.average_years_exp
    average(:years_experience)
  end

  def thrills
    rides.where("open = true")
         .order("thrill_rating desc")
    rides.name
    end
end
